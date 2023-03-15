import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ElevatedButtonThemeStyle {
  static elevatedButtonStyle(Color buttonColor, Color textColor){
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        maximumSize: MaterialStateProperty.all<Size>(
          Size(Get.width * 0.90, Get.height * 0.07),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(Get.width * 0.90, Get.height * 0.07),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Get.width * 0.04),
          ),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(color: textColor)
        ),
      ),
    );
  }
}