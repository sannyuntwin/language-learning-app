package com.example.lla;

import android.content.Context;
import android.speech.tts.TextToSpeech;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import java.util.Locale;

public class MainActivity extends FlutterActivity {
    private static final String TTS_CHANNEL = "tts_channel";
    
    private TextToSpeech textToSpeech;
    private boolean isInitialized = false;

    @Override
    public void configureFlutterEngine(FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        
        // Initialize TextToSpeech
        textToSpeech = new TextToSpeech(this, new TextToSpeech.OnInitListener() {
            @Override
            public void onInit(int status) {
                if (status == TextToSpeech.SUCCESS) {
                    // Default to English if no specific language is requested
                    textToSpeech.setLanguage(Locale.US);
                    isInitialized = true;
                }
            }
        });
        
        // Set up method channel
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), TTS_CHANNEL)
            .setMethodCallHandler((call, result) -> {
                switch (call.method) {
                    case "speak":
                        String text = call.argument("text");
                        String locale = call.argument("locale");
                        speakText(text, locale);
                        result.success(null);
                        break;
                    case "stop":
                        if (textToSpeech != null) {
                            textToSpeech.stop();
                        }
                        result.success(null);
                        break;
                    case "pause":
                        if (textToSpeech != null) {
                            textToSpeech.stop();
                        }
                        result.success(null);
                        break;
                    case "resume":
                        // TTS doesn't have a direct pause/resume in Android API
                        result.success(null);
                        break;
                    default:
                        result.notImplemented();
                }
            });
    }
    
    private void speakText(String text, String localeString) {
        if (!isInitialized || textToSpeech == null) return;
        
        // Parse locale string (e.g., "en_US" -> Locale.US)
        String[] parts = localeString.split("_");
        if (parts.length == 2) {
            String language = parts[0];
            String country = parts[1];
            Locale locale = new Locale(language, country);
            textToSpeech.setLanguage(locale);
        }
        
        // Speak the text
        textToSpeech.speak(text, TextToSpeech.QUEUE_FLUSH, null, null);
    }
    
    @Override
    protected void onDestroy() {
        // Clean up TextToSpeech resources
        if (textToSpeech != null) {
            textToSpeech.stop();
            textToSpeech.shutdown();
        }
        super.onDestroy();
    }
}