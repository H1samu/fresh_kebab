package com.example.fresh_kebab

import android.app.Application

import com.yandex.mapkit.MapKitFactory

class MainApplication: Application() {
  override fun onCreate() {
    super.onCreate()
    MapKitFactory.setLocale("YOUR_LOCALE") // Your preferred language. Not required, defaults to system language
    MapKitFactory.setApiKey("d2db6463-452b-4bfe-bf36-c4f5f336f78d") // Your generated API key
  }
}