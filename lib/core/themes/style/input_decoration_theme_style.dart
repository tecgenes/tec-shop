import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputDecorationThemeStyle{
  static InputDecorationTheme inputTheme(Color color){
    return InputDecorationTheme(
      isCollapsed: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: color, width: 3),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      labelStyle: Get.textTheme.titleMedium,
      contentPadding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.05, vertical: Get.height * 0.020),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}