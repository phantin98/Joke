import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const String fontName = 'Inter';

  static const Color yellow2 = Color(0xFFFFDD52);

  static const Color green2 = Color(0xFF29B363);

  static const Color blue1 = Color(0xFF2C7EDB);

  static const Color white1 = Color(0xFFFFFFFF);

  static const Color black1 = Color(0xFF111827);
  static const Color black2 = Color(0xFF6B7280);

  static TextTheme textTheme = const TextTheme(
    headlineMedium: display1,
    headlineSmall: headline,
    titleLarge: title,
    titleSmall: subtitle,
    bodyMedium: body2,
    bodyLarge: body1,
    bodySmall: caption,
  );

  static const TextStyle display1 = TextStyle(
    // h4 -> display1
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: black1,
  );

  static const TextStyle headline = TextStyle(
    // h5 -> headline
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: black1,
  );
  static const TextStyle headlineGreen = TextStyle(
    // h5 -> headline
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: green2,
  );

  static const TextStyle headlineGrey = TextStyle(
    // h5 -> headline
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: black2,
  );

  static const TextStyle title = TextStyle(
    // h6 -> title
    fontFamily: fontName,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    letterSpacing: 0.18,
    color: black1,
  );

  static const TextStyle titleGrey = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    letterSpacing: 0.18,
    color: black2,
  );

  static const TextStyle titleWhite = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    letterSpacing: 0.18,
    color: Colors.white,
  );

  static const TextStyle titleDialog = TextStyle(
    // h6 -> title
    fontFamily: fontName,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    letterSpacing: 0.18,
    color: black1,
  );

  static const TextStyle subtitle = TextStyle(
    // subtitle2 -> subtitle
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: black1,
  );

  static const TextStyle body2 = TextStyle(
    // body1 -> body2
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: black1,
  );

  static const TextStyle body2Grey = TextStyle(
    // body1 -> body2
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: black2,
  );

  static const TextStyle body2Bold = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    letterSpacing: 0.2,
    color: black1,
  );

  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: black1,
  );

  static const TextStyle body1White = TextStyle(
    // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: white1,
  );

  static const TextStyle body1Grey = TextStyle(
    // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: black2,
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: black1,
  );

  static const TextStyle tabUnselectedLabelStyle = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 10,
    letterSpacing: 0.1,
    color: black1,
  );

  static const TextStyle btnTextStyleBlack = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0.18,
    color: black1,
  );

  static const TextStyle btnTextStyleWhite = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0.18,
    color: Colors.white,
  );
}
