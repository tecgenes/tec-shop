import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tec_shop/app/memory/app_memory.dart';
import 'package:tec_shop/core/ui/core_screen.dart';

class AccountScreen extends CoreScreen{
  AccountScreen({super.key});

  AppMemory  get appMemory => Get.find<AppMemory>();
  @override
  Widget mobileDevice(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          TextButton(onPressed: ()=> appMemory.changeThemeMode(), child: Text('theme'.tr)),
          TextButton(onPressed: ()=> appMemory.changeLanguage() , child: Text('language'.tr)),
        ],
      ),
    );
  }
}