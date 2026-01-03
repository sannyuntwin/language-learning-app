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
  
  // Enhanced UI System
  static const double cardRadius = 16.0;
  static const double buttonRadius = 12.0;
  static const double iconRadius = 8.0;
  
  // Optimized Spacing System
  static const double spaceXS = 4.0;
  static const double spaceS = 8.0;
  static const double spaceM = 16.0;
  static const double spaceL = 24.0;
  static const double spaceXL = 32.0;
  
  // Question Type Colors
  static const Color translationColor = Color(0xFFF59E0B);
  static const Color listeningColor = Color(0xFF3B82F6);
  static const Color sentenceColor = Color(0xFF10B981);
  static const Color fillBlankColor = Color(0xFF8B5CF6);

  // Main Theme Data
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: primaryGreen,
      scaffoldBackgroundColor: white,
      
      // Enhanced App Bar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: primaryGreen,
        foregroundColor: white,
        elevation: 2,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      
      // Optimized Card Theme
      cardTheme: CardThemeData(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cardRadius),
        ),
      ),
      
      // Streamlined Button Themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryGreen,
          foregroundColor: white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadius),
          ),
          elevation: 2,
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
        onPrimary: white,
        onSecondary: white,
        onSurface: grey,
      ),
    );
  }
  
  // Custom Decorations - Optimized
  static BoxDecoration get cardGradient {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(cardRadius),
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
      borderRadius: BorderRadius.circular(iconRadius),
      color: lightYellow,
    );
  }
  
  static BoxDecoration get questionCardDecoration {
    return BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(cardRadius),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.05),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ],
    );
  }
  
  static BoxDecoration get dropTargetDecoration {
    return BoxDecoration(
      color: Colors.grey.shade50,
      borderRadius: BorderRadius.circular(buttonRadius),
      border: Border.all(
        color: Colors.grey.shade300,
        width: 2,
      ),
    );
  }
  
  // Optimized Text Styles
  static TextStyle get headerTextStyle {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: primaryGreen,
      height: 1.2,
    );
  }
  
  static TextStyle get titleTextStyle {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: primaryGreen,
      height: 1.3,
    );
  }
  
  static TextStyle get questionTextStyle {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color(0xFF1E293B),
      height: 1.4,
    );
  }
  
  static TextStyle get bodyTextStyle {
    return TextStyle(
      fontSize: 14,
      color: grey,
      height: 1.4,
    );
  }
  
  static TextStyle get captionTextStyle {
    return TextStyle(
      fontSize: 12,
      color: grey,
      fontWeight: FontWeight.w500,
      height: 1.3,
    );
  }
  
  static TextStyle get wordTextStyle {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color(0xFF1E293B),
    );
  }
  
  // Utility Methods
  static Widget getSpacing(Widget child, {double? height, double? width}) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }
  
  static EdgeInsets getCardPadding() {
    return const EdgeInsets.all(spaceM);
  }
  
  static EdgeInsets getScreenPadding() {
    return const EdgeInsets.all(spaceS);
  }
  
  // Enhanced Color System
  static Color get iconColor => primaryGreen;
  static Color get successColor => const Color(0xFF10B981);
  static Color get errorColor => Colors.red;
  static Color get warningColor => Colors.orange;
  
  // Question Type Specific Styles
  static BoxDecoration getQuestionTypeDecoration(String questionType) {
    switch (questionType.toLowerCase()) {
      case 'translation':
        return BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFFEF3C7), Color(0xFFFDE68A)],
          ),
          borderRadius: BorderRadius.circular(cardRadius),
          border: Border.all(
            color: translationColor.withValues(alpha: 0.3),
            width: 2,
          ),
        );
      case 'listening':
        return BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFDBEAFE), Color(0xFFBFDBFE)],
          ),
          borderRadius: BorderRadius.circular(cardRadius),
          border: Border.all(
            color: listeningColor.withValues(alpha: 0.3),
            width: 2,
          ),
        );
      case 'sentence':
        return BoxDecoration(
          color: sentenceColor.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(cardRadius),
          border: Border.all(
            color: sentenceColor.withValues(alpha: 0.2),
            width: 2,
          ),
        );
      default:
        return questionCardDecoration;
    }
  }
  
  static TextStyle getQuestionTypeTextStyle(String questionType) {
    switch (questionType.toLowerCase()) {
      case 'translation':
        return const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: translationColor,
        );
      case 'listening':
        return const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: listeningColor,
        );
      case 'sentence':
        return const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: sentenceColor,
        );
      default:
        return questionTextStyle;
    }
  }
}