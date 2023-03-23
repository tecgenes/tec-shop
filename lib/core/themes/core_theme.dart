import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tec_shop/core/themes/style/appbar_theme_style.dart';
import 'package:tec_shop/core/themes/style/bottom_bar_theme_style.dart';
import 'package:tec_shop/core/themes/style/elevated_button_theme_style.dart';
import 'package:tec_shop/core/themes/style/input_decoration_theme_style.dart';

abstract class CoreTheme{
  Map<String,dynamic> themeSettings = {};
  String get fileName;
  ThemeData get themeData;

  set baseThemeData(ThemeData baseThemeData){
    this.baseThemeData = baseThemeData;
  }

  Future<CoreTheme> init() async{
    try{
      String data = await rootBundle.loadString('assets/themes/$fileName.json');
      themeSettings = Map<String,dynamic>.from( jsonDecode(data) );
    }catch(error){
      throw Exception("${error.toString()} Failed to load Theme Settings");
    }
    return this;
  }

  Color getColor({required String filed, required String name, String? shade = 'main'}){
    String value = themeSettings[filed][name][shade] ?? '#ff8d00';
    if(value.startsWith('#')){
      value = value.replaceAll('#', '');
    }
    return Color(int.tryParse("0xff$value") ?? 0xffff8d00);
  }

  Color get primaryColor => getColor(filed: 'colors', name: 'primary');
  Color get primaryColorShade1 => getColor(filed: 'colors',name: 'primary', shade: 'shade1');
  Color get primaryColorShade2 => getColor(filed: 'colors',name: 'primary', shade: 'shade2');

  Color get secondaryColor => getColor(filed: 'colors',name: 'secondary');
  Color get secondaryColorShade1 => getColor(filed: 'colors',name: 'secondary', shade: 'shade1');
  Color get secondaryColorShade2 => getColor(filed: 'colors',name: 'secondary', shade: 'shade2');

  Color get infoColor => getColor(filed: 'colors',name: 'info');
  Color get infoColorShade1 => getColor(filed: 'colors',name: 'info', shade: 'shade1');
  Color get infoColorShade2 => getColor(filed: 'colors',name: 'info', shade: 'shade2');

  Color get successColor => getColor(filed: 'colors',name: 'success');
  Color get successColorShade1 => getColor(filed: 'colors',name: 'success', shade: 'shade1');
  Color get successColorShade2 => getColor(filed: 'colors',name: 'success', shade: 'shade2');

  Color get warningColor => getColor(filed: 'colors',name: 'warning');
  Color get warningColorShade1 => getColor(filed: 'colors',name: 'warning', shade: 'shade1');
  Color get warningColorShade2 => getColor(filed: 'colors',name: 'warning', shade: 'shade2');

  Color get dangerColor => getColor(filed: 'colors',name: 'danger');
  Color get dangerColorShade1 => getColor(filed: 'colors',name: 'danger', shade: 'shade1');
  Color get dangerColorShade2 => getColor(filed: 'colors',name: 'danger', shade: 'shade2');

  Color get textPrimaryColor => getColor(filed: 'text',name: 'primary');
  Color get textPrimaryColorShade1 => getColor(filed: 'text',name: 'primary', shade: 'shade1');
  Color get textPrimaryColorShade2 => getColor(filed: 'text',name: 'primary', shade: 'shade2');

  Color get textSecondaryColor => getColor(filed: 'text',name: 'primary');
  Color get textSecondaryColorShade1 => getColor(filed: 'text',name: 'primary', shade: 'shade1');
  Color get textSecondaryColorShade2 => getColor(filed: 'text',name: 'primary', shade: 'shade2');

  ThemeData buildTheme(BuildContext context){
    return themeData.copyWith(
      primaryColor: primaryColor,
      appBarTheme: AppBarThemeStyle.appBarStyle(
          color: Colors.transparent,
      ),
      textTheme: GoogleFonts.cairoTextTheme().apply(bodyColor: textPrimaryColor ),
      badgeTheme:  BadgeThemeData(
        backgroundColor:  primaryColor,
        textStyle: GoogleFonts.cairo().copyWith(fontSize: 8.5, fontWeight: FontWeight.bold),

      ),
      elevatedButtonTheme: ElevatedButtonThemeStyle.elevatedButtonStyle(primaryColor,secondaryColor),
      bottomNavigationBarTheme:BottomBarThemeStyle.bottomBarStyle(),

    );
  }
}