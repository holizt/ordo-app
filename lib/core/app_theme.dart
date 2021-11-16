import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/fonts.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: ColorsApp.primaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: FontApp.textTheme,
  canvasColor: ColorsApp.backgroundColor,
);
