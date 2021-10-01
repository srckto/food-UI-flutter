import 'package:flutter/material.dart';
import 'package:meal_ui/constant.dart';
import 'package:meal_ui/screens/base_screen.dart';
import 'package:meal_ui/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Meal UI',
      theme: ThemeData(
        primaryColor: k_primery,
        canvasColor: k_canvas,
        backgroundColor: k_background,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: k_primery,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: k_fontTitle,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          headline3: TextStyle(
            color: k_fontSubTitle,
            fontSize: 11,
            fontWeight: FontWeight.normal,
          ),
          headline4: TextStyle(
            color: k_background,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),

        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.transparent,
        ),
      ),
      home: BaseScreenApp(),
    );
  }
}
