import 'package:flutter/material.dart';

/// Ekshathe brand colors. Use these instead of typing colors in screens.
class AppColors {
  AppColors._(); // Prevents creating an instance; this class is only constants.

  static const Color forestGreen = Color(0xFF1B5E3F); // Primary brand color
  static const Color cream = Color(0xFFFAF6EC); // Screen background
  static const Color card = Colors.white; // Card background
  static const Color border = Color(0xFFE6E0D0); // Subtle card borders
  static const Color charcoal = Color(0xFF263238); // Main text
  static const Color mutedText = Color(0xFF6B7468); // Secondary text
  static const Color softGreen = Color(0xFFDDEBE2); // Highlights

  // Meaning colors. Always pair these with text or an icon, never color alone.
  static const Color positive = Color(0xFF3E8E5A); // Money you will receive
  static const Color pending = Color(0xFFE08A1E); // Pending actions
  static const Color negative = Color(0xFFC62828); // Money you owe, errors
}