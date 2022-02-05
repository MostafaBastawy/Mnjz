import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mnjz/cubit/states.dart';
import 'package:mnjz/modules/order_placed_1/order_placed_1.dart';
import 'package:mnjz/modules/order_placed_3/order_placed_3.dart';
import 'package:mnjz/modules/order_placed_4/order_placed_4.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  List<Widget> screens = [
    OrderPlaced1(),
    OrderPlaced3(),
    OrderPlaced4(),
  ];
  void changeBottomNavBar(int index) {
    currentIndex = index;

    emit(AppChangeBottomNavBarState());
  }
}
