import 'package:flutter/material.dart';

class AppTheme {
  // Main brand colors
  static const Color primaryGreen = Color(0xFF38EF7D);
  static const Color darkBg = Color(0xFF0C0C0C);
  static const Color cardBlack = Color(0xFF101010);
  static const Color redColor = Color(0xFFFF3C30);
  static const Color mediumGray = Color(0xFFA6A6A6);
   static const Color lightGray = Color(0xFFD9D9D9);
    static const Color boarderColor = Color(0xFF606060);



  static const Color textWhite = Colors.white;
  static const Color textGrey = Colors.grey;

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkBg,
    primaryColor: primaryGreen,
    colorScheme: const ColorScheme.dark(
      primary: primaryGreen,
      secondary: primaryGreen,
      background: darkBg,
    ),
    appBarTheme: AppBarTheme(backgroundColor: darkBg),
    // textTheme: const TextTheme(
    //   headlineLarge: TextStyle(
    //     color: textWhite,
    //     fontSize: 32,
    //     fontWeight: FontWeight.bold,
    //   ),
    //   headlineMedium: TextStyle(
    //     color: textWhite,
    //     fontSize: 24,
    //     fontWeight: FontWeight.w600,
    //   ),
    //   bodyLarge: TextStyle(
    //     color: textGrey,
    //     fontSize: 16,
    //     fontWeight: FontWeight.w400,
    //   ),
    //   bodyMedium: TextStyle(
    //     color: textGrey,
    //     fontSize: 14,
    //     fontWeight: FontWeight.w300,
    //   ),
    // ),

    // // ---------- INPUT FIELDS ----------
    // inputDecorationTheme: InputDecorationTheme(
    //   filled: true,
    //   fillColor: cardBlack,
    //   border: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(14),
    //     borderSide: const BorderSide(color: Colors.grey),
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(14),
    //     borderSide: const BorderSide(color: primaryGreen, width: 2),
    //   ),
    //   hintStyle: const TextStyle(color: Colors.grey),
    // ),

    // // ---------- BUTTONS ----------
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: primaryGreen,
    //     foregroundColor: Colors.black,
    //     padding: const EdgeInsets.symmetric(vertical: 16),
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    //   ),
    // ),

    // // ---------- CARDS ----------
    // cardTheme: CardThemeData(
    //   color: AppTheme.cardBlack, // or your own color
    //   elevation: 0,
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    // ),

    // // ---------- ICONS ----------
    // iconTheme: const IconThemeData(color: textWhite),
  );
}
