import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bluishColor = Colors.cyan;
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

  TextStyle get subHeadingStyle{
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Get.isDarkMode ? Colors.white : Colors.black,
      ),
    );
  }

  TextStyle get headingStyle {
    return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.black : Colors.white,
      ),
    );
  }

}
