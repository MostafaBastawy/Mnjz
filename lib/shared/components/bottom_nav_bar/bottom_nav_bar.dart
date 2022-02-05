import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<BottomNavigationBarItem> get bottomNavBarItem => [
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 23,
        ),
        label: 'الرئيسية',
      ),
      const BottomNavigationBarItem(
        icon: FaIcon(
          FontAwesomeIcons.solidComments,
          size: 23,
        ),
        label: 'دردشاتي',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.camera_enhance,
          size: 23,
          color: Color(0xAFF19C0E),
        ),
        label: 'أضف إعلان',
      ),
      const BottomNavigationBarItem(
        icon: FaIcon(
          FontAwesomeIcons.solidFileAlt,
          size: 20,
        ),
        label: 'إعلاناتي',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
          size: 23,
        ),
        label: 'حسابي',
      ),
    ];
