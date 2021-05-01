import 'package:flutter/material.dart';

final kDarkTheme = ThemeData.dark().copyWith(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: AppBarTheme(color: Colors.blueGrey),
  errorColor: Colors.red,
  cardColor: Colors.black54,
  focusColor: Colors.lightGreen,
);

final kLightTheme = ThemeData.light().copyWith(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: AppBarTheme(color: Colors.blue),
  errorColor: Colors.red,
  cardColor: Colors.black54,
  focusColor: Colors.white,
);
