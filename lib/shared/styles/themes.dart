import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData lightTheme(BuildContext? context) => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: '',
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xAF007AFC),
        unselectedItemColor: const Color(0xAF7F8083),
        selectedLabelStyle:
            TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        unselectedLabelStyle:
            TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
        elevation: 0.0,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        color: Colors.white,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.sp,
          color: const Color(0xAF10306C),
        ),
      ),
    );
