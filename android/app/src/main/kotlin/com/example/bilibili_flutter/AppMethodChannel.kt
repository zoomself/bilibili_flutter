package com.example.bilibili_flutter

import android.annotation.SuppressLint
import android.text.TextUtils
import android.widget.Toast
import com.example.bilibili_flutter.helper.BiliVideoDownload
import com.example.bilibili_flutter.helper.DownloadListener
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.reactivex.Observable
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.schedulers.Schedulers
import java.io.File

class AppMethodChannel(flutterEngine: FlutterEngine, var activity: FlutterActivity) : MethodChannel.MethodCallHandler {

    private val methodChannel=MethodChannel(flutterEngine.dartExecutor.binaryMessenger,"com.zoomself.bilibili_flutter")
    init {
        methodChannel.setMethodCallHandler(this)
    }

    @SuppressLint("CheckResult")
    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        val method = call.method
        if("downloadVideo" == method){
            val videoId=call.argument<String>("videoId").toString()
            Observable.create<String> {
                val videoInfo=BiliVideoDownload.htmlParser("$videoId/")
                if(videoInfo!=null){
                    videoInfo.videoId=videoId
                    val saveDir = activity.cacheDir.absolutePath + File.separator +"bilibili_videos";
                    BiliVideoDownload.downloadFile(saveDir,videoInfo, object :
                        DownloadListener {
                        override fun onSuccess(outFile: String?) {
                            if(outFile!=null){
                                it.onNext(outFile)
                            }
                        }
                        override fun onError(error: String?) {
                            it.onError(Throwable("$error"))
                        }
                    })
                }
            }.subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe ({
                    result.success(it)
                },{
                    result.success(it.message)
                })
        }else{
            result.notImplemented();
        }

    }

}