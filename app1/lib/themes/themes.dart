import 'package:flutter/material.dart';

class MyAppTheme {
  static List<ThemeData> themes = [
    ThemeData(
      //primarySwatch: Colors.deepOrange,
      /*colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepOrange,
          brightness: Brightness.light,
        ),*/
      primaryColor: Colors.teal,
      appBarTheme: const AppBarTheme(color: Colors.teal),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 22),
          bodyLarge: TextStyle(fontSize: 32),
          bodySmall: TextStyle(fontSize: 18)),
      iconTheme: const IconThemeData(color: Colors.teal, size: 26),
    ),
    ThemeData(
      //primarySwatch: Colors.deepOrange,
      /*colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepOrange,
          brightness: Brightness.light,
        ),*/
      primaryColor: Colors.deepOrange,
      appBarTheme: const AppBarTheme(color: Colors.deepOrange),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 22),
          bodyLarge: TextStyle(fontSize: 32),
          bodySmall: TextStyle(fontSize: 18)),
      iconTheme: const IconThemeData(color: Colors.deepOrange, size: 26),
    ),
  ];
}
