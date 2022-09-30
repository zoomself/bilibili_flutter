package com.example.bilibili_flutter.helper;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;


import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;
import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONObject;
import io.microshow.rxffmpeg.RxFFmpegInvoke;
import io.microshow.rxffmpeg.RxFFmpegSubscriber;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class BiliVideoDownload {
    private static final String TAG="BiliVideoDownload";

    /** 视频地址 */
    //private static String VIDEO_URL = "https://www.bilibili.com/video/BV1BV411d7CP/";
    public static String VIDEO_URL = "https://www.bilibili.com/video/";
    public static String USER_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36";

    private static  void log(String info){
        Log.i(TAG,info);
    }

    /** 解析HTML获取相关信息 */
    public static VideoInfo htmlParser(String videoId){
        VideoInfo videoInfoBean=new VideoInfo();
        HttpResponse res = HttpRequest.get(VIDEO_URL+videoId).timeout(2000).execute();
        String html = res.body();
        Document document = Jsoup.parse(html);

        Element title = document.getElementsByTag("title").first();
        // 视频名称
        videoInfoBean.videoName = title.text();
        // 截取视频信息
        Pattern pattern = Pattern.compile("(?<=<script>window.__playinfo__=).*?(?=</script>)");
        Matcher matcher = pattern.matcher(html);
        if (matcher.find()) {
            videoInfoBean.videoInfo = new JSONObject(matcher.group());
        } else {
            log("未匹配到视频信息，退出程序！");
            return null;
        }
       return getVideoInfo(videoInfoBean);
    }

    /** 解析视频和音频的具体信息 */
    private static VideoInfo getVideoInfo(VideoInfo videoInfoBean){
        // 获取视频的基本信息
        JSONObject videoInfo = videoInfoBean.videoInfo;
        JSONArray videoInfoArr = videoInfo.getJSONObject("data").getJSONObject("dash").getJSONArray("video");
        videoInfoBean.videoBaseUrl = videoInfoArr.getJSONObject(0).getStr("baseUrl");
        videoInfoBean.videoBaseRange = videoInfoArr.getJSONObject(0).getJSONObject("SegmentBase").getStr("Initialization");
        HttpResponse videoRes = HttpRequest.get(videoInfoBean.videoBaseUrl)
                .header("Referer", VIDEO_URL)
                .header("Range", "bytes=" + videoInfoBean.videoBaseRange)
                .header("User-Agent", USER_AGENT)
                .timeout(2000)
                .execute();
        videoInfoBean.videoSize = videoRes.header("Content-Range").split("/")[1];

        // 获取音频基本信息
        JSONArray audioInfoArr = videoInfo.getJSONObject("data").getJSONObject("dash").getJSONArray("audio");
        videoInfoBean.audioBaseUrl = audioInfoArr.getJSONObject(0).getStr("baseUrl");
        videoInfoBean.audioBaseRange = audioInfoArr.getJSONObject(0).getJSONObject("SegmentBase").getStr("Initialization");
        HttpResponse audioRes = HttpRequest.get(videoInfoBean.audioBaseUrl)
                .header("Referer", VIDEO_URL)
                .header("Range", "bytes=" + videoInfoBean.audioBaseRange)
                .header("User-Agent", USER_AGENT)
                .timeout(2000)
                .execute();
        videoInfoBean.audioSize = audioRes.header("Content-Range").split("/")[1];
        log("info: "+videoInfoBean);
        return videoInfoBean;
    }

    /** 下载音视频 */
    public static void downloadFile(String saveDir, VideoInfo videoInfoBean, DownloadListener downloadListener){
        // 保存音视频的位置
        try {
            File fileDir = new File(saveDir);
            if (!fileDir.exists()){
                fileDir.mkdirs();
            }
            //是否已经保存过
            File cachedFile=new File(saveDir + File.separator + videoInfoBean.videoId+"_"+videoInfoBean.videoName +".mp4");

            if(cachedFile.exists()){
                log("--------------该视频已缓存---->"+cachedFile.getAbsolutePath());
                downloadListener.onSuccess(cachedFile.getAbsolutePath());
                return;
            }

            // 下载视频
            File videoFile = new File(saveDir + File.separator + videoInfoBean.videoId+"_"+videoInfoBean.videoName + "_video.mp4");
            if (!videoFile.exists()){
                log("--------------开始下载视频文件--------------");
                HttpResponse videoRes = HttpRequest.get(videoInfoBean.videoBaseUrl)
                        .header("Referer", VIDEO_URL)
                        //.header("Range", "bytes=0-" + videoInfoBean.videoSize)
                        .header("Range", "" + videoInfoBean.videoBaseRange)
                        .header("User-Agent", USER_AGENT)
                        .execute();
                videoRes.writeBody(videoFile);
                log("--------------视频文件下载完成--------------");

            }

            // 下载音频
            File audioFile = new File(saveDir + File.separator + videoInfoBean.videoId+"_"+videoInfoBean.videoName + "_audio.mp4");
            if (!audioFile.exists()){
                log("--------------开始下载音频文件--------------");

                HttpResponse audioRes = HttpRequest.get(videoInfoBean.audioBaseUrl)
                        .header("Referer", VIDEO_URL)
                        //.header("Range", "bytes=0-" + videoInfoBean.audioSize)
                        .header("Range", "" + videoInfoBean.audioBaseRange)
                        .header("User-Agent", USER_AGENT)
                        .execute();
                audioRes.writeBody(audioFile);
                log("--------------音频文件下载完成--------------");

            }
            mergeFiles(saveDir,videoFile,audioFile,videoInfoBean, downloadListener);

        }catch (Exception e){
            downloadListener.onError(e.getMessage());
            log("--------------文件下载异常"+e.getMessage()+"--------------");

        }


    }


    private static void mergeFiles(String saveDir, File videoFile, File audioFile, VideoInfo videoInfoBean, DownloadListener downloadListener){
        try {
            log("--------------开始合并音视频--------------");
            String outFile = saveDir + File.separator +videoInfoBean.videoId+"_"+ videoInfoBean.videoName + ".mp4";
            List<String> list = new ArrayList<>();
            list.add("ffmpeg");
            list.add("-i");
            list.add(videoFile.getAbsolutePath());
            list.add("-i");
            list.add(audioFile.getAbsolutePath());
            list.add("-vcodec");
            list.add("copy");
            list.add("-acodec");
            list.add("copy");
            list.add(outFile);

            String[] commends=new String[list.size()];
            for(int i=0;i<list.size();i++){
                commends[i]=list.get(i);
            }
            //开始执行FFmpeg命令
            RxFFmpegInvoke.getInstance()
                    .runCommandRxJava(commends)
                    .subscribe(new RxFFmpegSubscriber() {
                        @Override
                        public void onFinish() {
                            try {
                                videoFile.delete();
                                audioFile.delete();
                                downloadListener.onSuccess(outFile);
                                log("--------------音视频合并完成--------------");
                            }catch (Exception e){
                                log("--------------音视频合并完成后删除文件异常------>"+e.getMessage());

                            }

                        }

                        @Override
                        public void onProgress(int progress, long progressTime) {
                            log("--------------音视频合并中-----> "+progress);

                        }

                        @Override
                        public void onCancel() {
                            log("--------------音视频合并取消--------------");

                        }

                        @Override
                        public void onError(String message) {
                            log("--------------音视频合并异常-------->"+message);
                            downloadListener.onError(message);
                        }
                    });

        } catch (Exception e) {
            downloadListener.onError(e.getMessage());
            log("--------------音视频合并异常-------->"+e.getMessage());

        }

    }


    /**
     * 直接下载mp4视频
     * @param mp4Url
     * @param saveDir
     * @param downloadListener
     */
    public static void downloadMp4Direct(Context context,String mp4Url, String videoId, String videoName, String saveDir, DownloadListener downloadListener){
        // 保存音视频的位置
        try {
            File fileDir = new File(saveDir);
            if (!fileDir.exists()){
                fileDir.mkdirs();
            }
            //是否已经保存过
            File cachedFile=new File(saveDir + File.separator + videoId+"_"+videoName +".mp4");

            if(cachedFile.exists()){
                log("--------------该视频已缓存---->"+cachedFile.getAbsolutePath());
                downloadListener.onSuccess(cachedFile.getAbsolutePath());

                ContentValues values = new ContentValues();
                values.put(MediaStore.Video.Media.DATA, cachedFile.getPath());
                values.put(MediaStore.Video.Media.MIME_TYPE, "video/mp4");
                Uri uri = context.getContentResolver().insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, values);
                context.sendBroadcast(new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE, uri));
                return;
            }else {
                // 下载视频
                log("--------------开始下载视频文件-------------->"+cachedFile.getAbsolutePath());
                HttpResponse videoRes = HttpRequest.get(mp4Url)
                        .header("Referer", VIDEO_URL)
                        .header("User-Agent", USER_AGENT)
                        .execute();
                videoRes.writeBody(cachedFile);
                downloadListener.onSuccess(cachedFile.getAbsolutePath());

                ContentValues values = new ContentValues();
                values.put(MediaStore.Video.Media.DATA, cachedFile.getPath());
                values.put(MediaStore.Video.Media.MIME_TYPE, "video/mp4");
                Uri uri = context.getContentResolver().insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, values);
                context.sendBroadcast(new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE, uri));
                log("--------------视频文件下载完成--------------");
            }





        }catch (Exception e){
            downloadListener.onError(e.getMessage());
            log("--------------文件下载异常"+e.getMessage()+"--------------");

        }
    }




}
