import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mnjz/cubit/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  List<Widget> screens = [];
  void changeBottomNavBar(int index) {
    currentIndex = index;

    emit(AppChangeBottomNavBarState());
  }
}
