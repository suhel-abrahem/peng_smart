import 'package:flutter/material.dart';

class ColorManager {
  // Cool Blue Theme (Based on UI screenshot)
  static const MaterialColor primarySwatch = MaterialColor(
    0xFF2979FF, // Vivid blue
    <int, Color>{
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF42A5F5),
      500: Color(0xFF2979FF),
      600: Color(0xFF2962FF),
      700: Color(0xFF1E40FF),
      800: Color(0xFF0039CB),
      900: Color(0xFF002984),
    },
  );

  // Primary Colors
  static const Color primaryColor = Color(0xFF2979FF); // Main button blue
  static Color primaryColorLight = Color(0xFF90CAF9); // Soft background blue

  // Supporting Colors
  static const Color accentColor = Color(0xFF00E5FF); // Cyan for attention
  static const Color primaryContainerColor =
      Color(0xFFE3F2FD); // Light blue block background
  static const Color borderColor = Color(0xFFB0BEC5); // Neutral gray border
  static const Color shadowColor = Color(0x22000000); // Very light shadow
  static const Color lightShadowColor = Color(0xFFCFD8DC); // Cool soft shadow

  // Background and Surfaces
  static const Color backgroundColor = Color(0xFFF5F7FA); // Very light gray
  static const Color cardColor = Color(0xFFFFFFFF); // Pure white
  static const Color surfaceColor = Color(0xFFF0F3F5); // Light neutral surface
  static const Color onSurface = Color(0xFF1C1C1C);
  static const Color onLightSurface = Color(0xFF333333);

  // Text Colors
  static const Color textColor =
      Color.fromARGB(255, 223, 223, 223); // Main text
  static const Color secondaryTextColor =
      Color.fromARGB(255, 206, 206, 206); // Subdued text

  // Functional Colors
  static const Color successColor = Color(0xFF4CAF50); // Standard green
  static const Color warningColor = Color(0xFFFFC107); // Standard warning
  static const Color error = Color(0xFFD32F2F); // Red for errors
  static const Color logout = Color(0xFFE53935); // Logout red
  static const Color disabledColor = Color(0xFFBDBDBD); // Disabled gray
  static const Color disabledTextColor = Color(0xFF9E9E9E); // Lighter text

  // Light Mode Colors
  static const Color lightBackground = Color(0xFFF9F9F9);
  static const Color lightCardColor = Color(0xFFFFFFFF);
  static const Color lightSurfaceColor = Color(0xFFF3F3F3);
  static const Color lightTextColor = Color(0xFF333333);
  static const Color lightSecondaryTextColor = Color(0xFF666666);

  // Special Highlight Colors
  static const Color focusColor = Color(0xFF2979FF); // Same as primary
}
