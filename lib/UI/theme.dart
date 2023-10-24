import 'package:flutter/material.dart';

const Color bluishColor = Colors.teal;
const Color pinkishColor = Colors.pink;
const Color darkGreyColor = Color(0xFF121212);


class Themes {
  static final light = ThemeData(
  primaryColor:  bluishColor,
  brightness: Brightness.light,
  );

  static final dark = ThemeData(
  primaryColor:  darkGreyColor,
  brightness: Brightness.dark,
  );
}
