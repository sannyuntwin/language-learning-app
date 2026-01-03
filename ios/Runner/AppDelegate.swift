import Flutter
import UIKit
import AVFoundation

@main
@objc class AppDelegate: FlutterAppDelegate {
  // Create a method channel for TTS
  private let ttsChannel = "tts_channel"
  
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    // Set up method channel for TTS
    let controller = window?.rootViewController as! FlutterViewController
    let methodChannel = FlutterMethodChannel(name: ttsChannel,
                                           binaryMessenger: controller.binaryMessenger)
    
    methodChannel.setMethodCallHandler { [weak self] call, result in
      switch call.method {
      case "speak":
        if let text = call.arguments as? [String: Any],
           let speakText = text["text"] as? String,
           let localeString = text["locale"] as? String {
          self?.speak(text: speakText, locale: localeString, result: result)
        } else {
          result(FlutterError(code: "INVALID_ARGUMENTS", message: "Missing arguments", details: nil))
        }
      case "stop":
        self?.stop(result: result)
      case "pause":
        self?.pause(result: result)
      case "resume":
        self?.resume(result: result)
      default:
        result(FlutterMethodNotImplemented)
      }
    }
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  
  private func speak(text: String, locale: String, result: FlutterResult) {
    // Convert locale string to Locale
    let localeParts = locale.components(separatedBy: "_")
    let language = localeParts.count > 0 ? localeParts[0] : "en"
    let country = localeParts.count > 1 ? localeParts[1] : "US"
    
    // Create speech synthesizer
    let synthesizer = AVSpeechSynthesizer()
    let utterance = AVSpeechUtterance(string: text)
    
    // Set voice based on locale
    utterance.voice = AVSpeechSynthesisVoice(language: "\(language)-\(country)") ?? AVSpeechSynthesisVoice(language: "en-US")
    
    // Speak
    synthesizer.speak(utterance)
    result(nil)
  }
  
  private func stop(result: FlutterResult) {
    // For iOS, we don't have a direct stop method, so we'll do nothing
    result(nil)
  }
  
  private func pause(result: FlutterResult) {
    // For iOS, we don't have a direct pause method, so we'll do nothing
    result(nil)
  }
  
  private func resume(result: FlutterResult) {
    // For iOS, we don't have a direct resume method, so we'll do nothing
    result(nil)
  }
}
