import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Core palette
  static const Color background = Color(0xFF17161C);
  static const Color foreground = Color(0xFFF6F2EA);

  // Blob colors — sama, tetap kontras di atas background gelap
  static const Color blobMint = Color(0xFFA8D5C0);
  static const Color blobYellow = Color(0xFFDEC97A);
  static const Color blobOrange = Color(0xFFD4956A);
  static const Color blobLavender = Color(0xFFB5A9D9);

  // Icon card
  static const Color iconCardBackground = Color(0xFF252428);

  // Icon colors
  static const Color iconGreen = Color(0xFF4BAD96);
  static const Color iconOrange = Color(0xFFC4793A);
  static const Color iconPurple = Color(0xFF7D6EC0);

  // Text
  static const Color textPrimary = Color(0xFFF6F2EA);
  static const Color textSecondary = Color(0xFF9E9A96);
  static const Color textSkip = Color(0xFF6B6866);

  // Dot indicator
  static const Color indicatorActive = Color(0xFF4BAD96);
  static const Color indicatorInactive = Color(0xFF3D3B42);

  // Button — dibalik di dark mode: background cream, teks gelap
  static const Color buttonBackground = Color(0xFFF6F2EA);
  static const Color onButton = Color(0xFF17161C);
}
