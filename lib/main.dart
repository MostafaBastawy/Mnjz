import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mnjz/cubit/bloc_observer.dart';
import 'package:mnjz/modules/homelayout_screen.dart';
import 'package:mnjz/shared/styles/themes.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme(context),
        themeMode: ThemeMode.light,
        builder: (context, widget) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: widget!,
        ),
        home: const HomeLayout(),
      ),
    );
  }
}
