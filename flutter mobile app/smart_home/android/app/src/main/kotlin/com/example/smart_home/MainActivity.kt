package com.example.smart_home

import android.net.ConnectivityManager
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import android.net.wifi.WifiNetworkSpecifier
import android.os.Build
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "smart_home/wifi_onboarding"

    private var connectivityManager: ConnectivityManager? = null
    private var espNetworkCallback: ConnectivityManager.NetworkCallback? = null
    private var homeNetworkCallback: ConnectivityManager.NetworkCallback? = null
    private var espNetwork: Network? = null
    private var homeNetwork: Network? = null

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        connectivityManager =
            getSystemService(CONNECTIVITY_SERVICE) as ConnectivityManager

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                "connectToEspNetwork" -> {
                    val ssid = call.argument<String>("ssid") ?: ""
                    val password = call.argument<String>("password")
                    val isOpen = call.argument<Boolean>("isOpen") ?: false
                    connectToEspNetwork(ssid, password, isOpen, result)
                }

                "connectToHomeNetwork" -> {
                    val ssid = call.argument<String>("ssid") ?: ""
                    val password = call.argument<String>("password")
                    val isOpen = call.argument<Boolean>("isOpen") ?: false
                    connectToHomeNetwork(ssid, password, isOpen, result)
                }

                "disconnectFromEspNetwork" -> {
                    disconnectFromEspNetwork(result)
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
            espNetworkCallback?.let {
                connectivityManager?.unregisterNetworkCallback(it)
            }
            espNetworkCallback = null
            espNetwork = null

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

            val callback = object : ConnectivityManager.NetworkCallback() {
                override fun onAvailable(network: Network) {
                    super.onAvailable(network)
                    espNetwork = network
                    connectivityManager?.bindProcessToNetwork(network)
                    result.success(true)
                }

                override fun onUnavailable() {
                    super.onUnavailable()
                    result.error("UNAVAILABLE", "ESP network unavailable", null)
                }

                override fun onLost(network: Network) {
                    super.onLost(network)
                    if (espNetwork == network) {
                        espNetwork = null
                        connectivityManager?.bindProcessToNetwork(null)
                    }
                }
            }

            espNetworkCallback = callback
            connectivityManager?.requestNetwork(request, callback)
        } catch (e: Exception) {
            result.error("CONNECT_FAILED", e.message, null)
        }
    }

    private fun connectToHomeNetwork(
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
            homeNetworkCallback?.let {
                connectivityManager?.unregisterNetworkCallback(it)
            }
            homeNetworkCallback = null
            homeNetwork = null

            val specifierBuilder = WifiNetworkSpecifier.Builder()
                .setSsid(ssid)

            if (!isOpen && !password.isNullOrEmpty()) {
                specifierBuilder.setWpa2Passphrase(password)
            }

            val specifier = specifierBuilder.build()

            val request = NetworkRequest.Builder()
                .addTransportType(NetworkCapabilities.TRANSPORT_WIFI)
                .setNetworkSpecifier(specifier)
                .build()

            val callback = object : ConnectivityManager.NetworkCallback() {
                override fun onAvailable(network: Network) {
                    super.onAvailable(network)
                    homeNetwork = network
                    connectivityManager?.bindProcessToNetwork(network)
                    result.success(true)
                }

                override fun onUnavailable() {
                    super.onUnavailable()
                    result.error("UNAVAILABLE", "Home network unavailable", null)
                }

                override fun onLost(network: Network) {
                    super.onLost(network)
                    if (homeNetwork == network) {
                        homeNetwork = null
                        connectivityManager?.bindProcessToNetwork(null)
                    }
                }
            }

            homeNetworkCallback = callback
            connectivityManager?.requestNetwork(request, callback)
        } catch (e: Exception) {
            result.error("CONNECT_FAILED", e.message, null)
        }
    }

    private fun disconnectFromEspNetwork(result: MethodChannel.Result) {
        try {
            connectivityManager?.bindProcessToNetwork(null)

            espNetworkCallback?.let {
                connectivityManager?.unregisterNetworkCallback(it)
            }

            espNetworkCallback = null
            espNetwork = null

            result.success(true)
        } catch (e: Exception) {
            result.error("DISCONNECT_FAILED", e.message, null)
        }
    }
}