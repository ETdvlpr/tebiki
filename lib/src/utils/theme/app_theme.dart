import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();
  static const Color primaryColor = Color(0xFF000B9C);
  static const Color accentColor = Color(0xFFEEE55B);

  static const Color greyColor = Color(0xFF1A1A1A);
  static const Color greyColor2 = Color(0xFF111827);
  static const Color greyTextColor = Color(0xFF374151);
  static const Color greyTextColor2 = Color(0xFF4B5563);

  static ThemeData themeData = ThemeData(
    primaryColor: primaryColor,
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: primaryColor,
          secondary: accentColor,
        ),
    scaffoldBackgroundColor: primaryColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: accentColor,
        foregroundColor: primaryColor,
        elevation: 5,
        shadowColor: Colors.black54,
        minimumSize: Size(Get.width - 40, 40),
        maximumSize: Size(Get.width - 40, 120),
        padding: const EdgeInsets.symmetric(vertical: 15),
        textStyle: const TextStyle(fontSize: 20),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    ),
    textTheme: const TextTheme()
        .apply(bodyColor: Colors.white, displayColor: Colors.white),
  );

  static TextStyle body = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle bodyLarge = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle bodySmall = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static TextStyle title = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle h6 = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static TextStyle h5 = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static TextStyle h4 = GoogleFonts.inter(
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
  static TextStyle bodyThin = body.copyWith(
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodyBold = body.copyWith(
    fontWeight: FontWeight.w600,
  );
  static TextStyle bodyExtraBold = body.copyWith(
    fontWeight: FontWeight.w700,
  );
  static TextStyle bodyLargeThin = bodyLarge.copyWith(
    fontWeight: FontWeight.w300,
  );
  static TextStyle bodySmallThin = bodySmall.copyWith(
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodyLargeBold = bodyLarge.copyWith(
    fontWeight: FontWeight.w600,
  );
  static TextStyle h6Thin = h6.copyWith(
    fontWeight: FontWeight.w400,
  );
  static TextStyle titleBold = title.copyWith(
    fontWeight: FontWeight.w700,
  );

  static final textFieldDecoration = InputDecoration(
    alignLabelWithHint: true,
    hintStyle: bodyLargeThin.copyWith(color: greyTextColor2.withAlpha(128)),
    labelStyle: bodyLargeThin.copyWith(color: greyTextColor2),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: greyColor),
      borderRadius: BorderRadius.circular(8.0),
    ),
    // contentPadding:
    //     const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  );
}
