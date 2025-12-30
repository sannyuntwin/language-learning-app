// This is a basic Flutter widget test for the Language Learning Game.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Language Learning App loads correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const LanguageLearningApp());

    // Verify that our app starts correctly.
    expect(find.text('🌟 Language Learning Game'), findsOneWidget);
    expect(find.text('Welcome to Multi-Language Learning! 🌍'), findsOneWidget);
    expect(find.text('Choose Language'), findsOneWidget);
  });
}
