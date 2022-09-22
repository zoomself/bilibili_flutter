package com.example.bilibili_flutter.helper;

public interface DownloadListener {
    void onSuccess(String outFile);
    void onError(String error);
}
