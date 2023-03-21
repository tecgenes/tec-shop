import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tec_shop/core/locale/app_translations.dart';
import 'package:tec_shop/core/memory/app_memory.dart';
import 'package:tec_shop/core/themes/core_theme.dart';
import 'package:tec_shop/core/themes/dark/tecshop_dark_theme.dart';
import 'package:tec_shop/core/themes/light/tecshop_light_theme.dart';
import 'package:tec_shop/core/util/app_connectivity.dart';

class AppConfigration{
  static init() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    Get.putAsync<AppConnectivity>(() => AppConnectivity().init());
    await Get.putAsync<AppMemory>(() => AppMemory().init());
    await Get.putAsync<AppTranslations>(() => AppTranslations().init(), permanent: true);

    await Get.putAsync<CoreTheme>(() => TecShopLightTheme().init(), tag: 'light');
    await Get.putAsync<CoreTheme>(() => TecShopDarkTheme().init(), tag: 'dark');
  }
}