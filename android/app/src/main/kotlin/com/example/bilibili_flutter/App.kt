package com.example.bilibili_flutter

import android.app.Application
import android.content.Context
import androidx.multidex.MultiDex

class App: Application() {

    override fun attachBaseContext(base: Context?) {
        super.attachBaseContext(base)
        //解决65536
        MultiDex.install(this)
    }
}