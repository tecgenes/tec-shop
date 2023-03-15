import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tec_shop/app/memory/app_memory.dart';
import 'package:tec_shop/app/pages/app_landing_page.dart';
import 'package:tec_shop/app/router/app_router.dart';
import 'package:tec_shop/app/themes/dark/tecshop_dark_theme.dart';
import 'package:tec_shop/app/themes/light/tecshop_light_theme.dart';
import 'package:tec_shop/core/locale/app_translations.dart';
import 'package:tec_shop/core/themes/core_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


class TecShop extends StatelessWidget {
  const TecShop({Key? key}) : super(key: key);

  AppTranslations get appTranslations => Get.find<AppTranslations>();
  AppMemory  get appMemory => Get.find<AppMemory>();
  TecShopLightTheme get lightTheme => Get.find<CoreTheme>(tag: "light") as TecShopLightTheme;
  TecShopDarkTheme get darkTheme => Get.find<CoreTheme>(tag: "dark") as TecShopDarkTheme;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.landing,
      // initialBinding: ,
      translations: appTranslations,
      themeMode: appMemory.getThemeMode(),
      theme: lightTheme.buildTheme(context),
      darkTheme: darkTheme.buildTheme(context),
      locale: appMemory.getLanguage(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      getPages: [
        AppLandingPage(),
      ],
    );
  }
}