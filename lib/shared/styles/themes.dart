import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme(BuildContext? context) => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: EasyLocalization.of(context!)!.locale == const Locale('en')
          ? 'Ubuntu'
          : 'Cairo',
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: const Color(0xAF1C4182),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedLabelStyle:
            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        unselectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        elevation: 0.0,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        color: Colors.white,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: const Color(0xAF10306C),
        ),
      ),
    );
