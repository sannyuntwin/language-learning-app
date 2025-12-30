import 'package:flutter/services.dart';

class TTSService {
  static const MethodChannel _channel = MethodChannel('tts_service');

  Future<void> speak(String text, String languageCode) async {
    try {
      await _channel.invokeMethod('speak', {
        'text': text,
        'languageCode': languageCode,
      });
    } catch (e) {
      // Fallback: silence TTS errors
    }
  }

  Future<void> stop() async {
    try {
      await _channel.invokeMethod('stop');
    } catch (e) {
      // Silence TTS errors
    }
  }
}