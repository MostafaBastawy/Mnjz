import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mnjz/cubit/states.dart';
import 'package:mnjz/modules/bottom_nav_bar/chat_screen.dart';
import 'package:mnjz/modules/bottom_nav_bar/home_screen.dart';
import 'package:mnjz/modules/bottom_nav_bar/my_adds_screen.dart';
import 'package:mnjz/modules/bottom_nav_bar/profile_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    const ChatScreen(),
    const MyAddsScreen(),
    const MyAddsScreen(),
    const ProfileScreen(),
  ];
  void changeBottomNavBar(int index) {
    currentIndex = index;

    emit(AppChangeBottomNavBarState());
  }
}
