import 'package:flutter/material.dart';

class CustomTheme {
  ThemeData darkTheme() {
    return ThemeData(
        scaffoldBackgroundColor: Color(0XFF000000),
        appBarTheme: appBarThemeDark(),
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(255, 200, 0, 1));
  }

  AppBarTheme appBarThemeDark() {
    return const AppBarTheme(
      color: Color(0XFF000000),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }
}
