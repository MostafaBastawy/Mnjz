import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mnjz/cubit/cubit.dart';
import 'package:mnjz/cubit/states.dart';
import 'package:mnjz/shared/components/bottom_nav_bar/bottom_nav_bar.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);

    return BlocBuilder<AppCubit, AppStates>(
      builder: (BuildContext context, state) => Scaffold(
        appBar: null,
        body: cubit.screens[cubit.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: bottomNavBarItem,
          currentIndex: cubit.currentIndex,
          onTap: (int index) {
            cubit.changeBottomNavBar(index);
          },
        ),
      ),
    );
  }
}
