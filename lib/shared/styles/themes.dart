import 'package:flutter/material.dart';

ThemeData lightTheme(BuildContext? context) => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Poppins',
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xAF007AFC),
        unselectedItemColor: Color(0xAF7F8083),
        selectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        unselectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        elevation: 0.0,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        color: Colors.white,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Color(0xAF10306C),
        ),
      ),
    );
