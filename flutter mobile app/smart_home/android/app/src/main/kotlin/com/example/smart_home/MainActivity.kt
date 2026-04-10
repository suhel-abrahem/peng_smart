package com.example.smart_home

import android.net.NetworkRequest
import android.net.wifi.WifiNetworkSpecifier
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.os.Build
import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "smart_home/wifi_onboarding"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        Log.d("SMART_HOME", "MethodChannel registered")

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->
            Log.d("SMART_HOME", "Method call: ${call.method}")

            when (call.method) {
                "connectToEspNetwork" -> {
                    val ssid = call.argument<String>("ssid") ?: ""
                    val password = call.argument<String>("password")
                    val isOpen = call.argument<Boolean>("isOpen") ?: false

                    Log.d("SMART_HOME", "connectToEspNetwork called with SSID=$ssid")

                    connectToEspNetwork(ssid, password, isOpen, result)
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun connectToEspNetwork(
        ssid: String,
        password: String?,
        isOpen: Boolean,
        result: MethodChannel.Result
    ) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q) {
            result.error("UNSUPPORTED", "Android 10+ required", null)
            return
        }

        try {
            val specifierBuilder = WifiNetworkSpecifier.Builder()
                .setSsid(ssid)

            if (!isOpen && !password.isNullOrEmpty()) {
                specifierBuilder.setWpa2Passphrase(password)
            }

            val specifier = specifierBuilder.build()

            val request = NetworkRequest.Builder()
                .addTransportType(NetworkCapabilities.TRANSPORT_WIFI)
                .removeCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
                .setNetworkSpecifier(specifier)
                .build()

            val connectivityManager =
                getSystemService(CONNECTIVITY_SERVICE) as ConnectivityManager

            val callback = object : ConnectivityManager.NetworkCallback() {
                override fun onAvailable(network: android.net.Network) {
                    super.onAvailable(network)
                     val connectivityManager =
        getSystemService(CONNECTIVITY_SERVICE) as ConnectivityManager

    connectivityManager.bindProcessToNetwork(network)
                    result.success(true)
                }

                override fun onUnavailable() {
                    super.onUnavailable()
                    Log.d("SMART_HOME", "ESP network unavailable")
                    result.error("UNAVAILABLE", "ESP network unavailable", null)
                }
            }

            connectivityManager.requestNetwork(request, callback)
        } catch (e: Exception) {
            Log.e("SMART_HOME", "CONNECT_FAILED", e)
            result.error("CONNECT_FAILED", e.message, null)
        }
    }
}