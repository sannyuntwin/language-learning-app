import 'package:flutter/material.dart';

class AppTheme {
  // Myanmar Education Theme Colors
  static const Color primaryGreen = Color(0xFF4CAF50);
  static const Color secondaryGreen = Color(0xFF81C784);
  static const Color lightGreen = Color(0xFFE8F5E8);
  static const Color accentYellow = Color(0xFFFFEB3B);
  static const Color lightYellow = Color(0xFFFFF9C4);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFF757575);

  // Main Theme Data
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: primaryGreen,
      scaffoldBackgroundColor: white,
      
      // App Bar Theme
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryGreen,
        foregroundColor: white,
        elevation: 2,
        centerTitle: true,
      ),
      
      // Card Theme
      cardTheme: CardThemeData(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      
      // Button Themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryGreen,
          foregroundColor: white,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 3,
        ),
      ),
      
      // Text Themes
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: primaryGreen,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: primaryGreen,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: grey,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: grey,
        ),
      ),
      
      // Color Scheme
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryGreen,
        brightness: Brightness.light,
        primary: primaryGreen,
        secondary: secondaryGreen,
        surface: white,
        background: white,
        onPrimary: white,
        onSecondary: white,
        onSurface: grey,
        onBackground: grey,
      ),
    );
  }
  
  // Custom Decorations
  static BoxDecoration get cardGradient {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(
        colors: [white, lightGreen],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }
  
  static BoxDecoration get screenGradient {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [white, lightYellow],
      ),
    );
  }
  
  static BoxDecoration get iconContainerDecoration {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: lightYellow,
    );
  }
  
  static BoxDecoration get progressContainerDecoration {
    return BoxDecoration(
      color: lightYellow,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: accentYellow, width: 2),
    );
  }
  
  static TextStyle get headerTextStyle {
    return const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: primaryGreen,
    );
  }
  
  static TextStyle get titleTextStyle {
    return const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: primaryGreen,
    );
  }
  
  static TextStyle get bodyTextStyle {
    return TextStyle(
      fontSize: 16,
      color: grey,
    );
  }
  
  static TextStyle get captionTextStyle {
    return TextStyle(
      fontSize: 12,
      color: grey,
      fontWeight: FontWeight.w500,
    );
  }
  
  static Color get iconColor => primaryGreen;
  static Color get successColor => Colors.green;
  static Color get errorColor => Colors.red;
  static Color get warningColor => Colors.orange;
}