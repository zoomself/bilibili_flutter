package com.example.bilibili_flutter.helper;

import java.io.Serializable;

import cn.hutool.json.JSONObject;

public class VideoInfo implements Serializable {  // 真实项目中不推荐直接使用`public`哦😯
    public String videoName;
    public JSONObject videoInfo;
    public String videoBaseUrl;
    public String audioBaseUrl;
    public String videoBaseRange;
    public String audioBaseRange;
    public String videoSize;
    public String audioSize;

    @Override
    public String toString() {
        return "VideoInfo{" +
                "videoName='" + videoName + '\'' +
                ", videoBaseUrl='" + videoBaseUrl + '\'' +
                ", audioBaseUrl='" + audioBaseUrl + '\'' +
                ", videoBaseRange='" + videoBaseRange + '\'' +
                ", audioBaseRange='" + audioBaseRange + '\'' +
                ", videoSize='" + videoSize + '\'' +
                ", audioSize='" + audioSize + '\'' +
                '}';
    }
}