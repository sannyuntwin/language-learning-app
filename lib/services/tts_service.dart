import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TTSService {
  static const MethodChannel _channel = MethodChannel('tts_channel');
  final FlutterTts _flutterTts = FlutterTts();
  
  Future<void> speak(String text, String languageCode) async {
    try {
      // Try using flutter_tts first
      await _configureFlutterTts(languageCode);
      await _flutterTts.speak(text);
    } catch (e) {
      // Fallback to native implementation
      // TTS flutter_tts error handled silently
      try {
        // Convert language code to locale
        String locale = _getLocaleFromCode(languageCode);
        
        // Use platform method channel to invoke native TTS
        await _channel.invokeMethod('speak', {
          'text': text,
          'locale': locale,
        });
      } catch (fallbackError) {
        // TTS native error handled silently
      }
    }
  }
  
  Future<void> _configureFlutterTts(String languageCode) async {
    // Set language based on the language code
    switch (languageCode) {
      case 'en':
        await _flutterTts.setLanguage('en-US');
        break;
      case 'ja':
        await _flutterTts.setLanguage('ja-JP');
        break;
      case 'zh':
        await _flutterTts.setLanguage('zh-CN');
        break;
      case 'th':
        await _flutterTts.setLanguage('th-TH');
        break;
      default:
        await _flutterTts.setLanguage('en-US');
    }
    
    // Configure TTS settings
    await _flutterTts.setVolume(0.8);
    await _flutterTts.setPitch(1.0);
    await _flutterTts.setSpeechRate(0.5);
  }

  // Map language codes to locale codes
  String _getLocaleFromCode(String languageCode) {
    switch (languageCode) {
      case 'en':
        return 'en_US';
      case 'ja':
        return 'ja_JP';
      case 'zh':
        return 'zh_CN';
      case 'th':
        return 'th_TH';
      default:
        return 'en_US';
    }
  }

  Future<void> stop() async {
    try {
      await _flutterTts.stop();
    } catch (e) {
      // Silence TTS errors
    }
    
    try {
      await _channel.invokeMethod('stop');
    } catch (e) {
      // Silence TTS errors
    }
  }
  
  Future<void> pause() async {
    try {
      await _flutterTts.pause();
    } catch (e) {
      // Silence TTS errors
    }
    
    try {
      await _channel.invokeMethod('pause');
    } catch (e) {
      // Silence TTS errors
    }
  }
  
  Future<void> resume() async {
    try {
      await _flutterTts.speak('');
      await _flutterTts.pause();
    } catch (e) {
      // Silence TTS errors
    }
    
    try {
      await _channel.invokeMethod('resume');
    } catch (e) {
      // Silence TTS errors
    }
  }
}