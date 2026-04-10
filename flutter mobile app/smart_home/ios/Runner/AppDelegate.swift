import UIKit
import Flutter
import NetworkExtension

@main
@objc class AppDelegate: FlutterAppDelegate {
  private let channelName = "smart_home/wifi_onboarding"

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller = window?.rootViewController as! FlutterViewController
    let channel = FlutterMethodChannel(
      name: channelName,
      binaryMessenger: controller.binaryMessenger
    )

    channel.setMethodCallHandler { call, result in
      switch call.method {
      case "connectToEspNetwork":
        guard let args = call.arguments as? [String: Any],
              let ssid = args["ssid"] as? String else {
          result(
            FlutterError(
              code: "INVALID_ARGS",
              message: "Missing SSID",
              details: nil
            )
          )
          return
        }

        let password = args["password"] as? String
        let isOpen = (args["isOpen"] as? Bool) ?? false

        self.connectToEspNetwork(
          ssid: ssid,
          password: password,
          isOpen: isOpen,
          result: result
        )

      default:
        result(FlutterMethodNotImplemented)
      }
    }

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func connectToEspNetwork(
    ssid: String,
    password: String?,
    isOpen: Bool,
    result: @escaping FlutterResult
  ) {
    let configuration: NEHotspotConfiguration

    if isOpen {
      configuration = NEHotspotConfiguration(ssid: ssid)
    } else {
      configuration = NEHotspotConfiguration(
        ssid: ssid,
        passphrase: password ?? "",
        isWEP: false
      )
    }

    configuration.joinOnce = true

    NEHotspotConfigurationManager.shared.apply(configuration) { error in
      if let error = error as NSError? {
        result(
          FlutterError(
            code: "CONNECT_FAILED",
            message: error.localizedDescription,
            details: error.code
          )
        )
      } else {
        result(true)
      }
    }
  }
}