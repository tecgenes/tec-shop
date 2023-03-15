import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tec_shop/app/keys/memory_keys.dart';

class AppMemory{

  late SharedPreferences _sharedPreferences;

  Future<AppMemory> init() async{
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  saveToken(String value) {
    _sharedPreferences.setString(MemoryKeys.accessToken.name, value);
  }

  getToken() {
    return _sharedPreferences.getString(MemoryKeys.accessToken.name);
  }

  removeToken() {
    _sharedPreferences.remove(MemoryKeys.accessToken.name);
  }

  //// Theme Mode Store //////////////////////////////////////////

  saveThemeMode(bool isDarkMode) async{
    await _sharedPreferences.setBool(MemoryKeys.darkMode.name, isDarkMode);
  }

  isSavedDarkMode(){
    return _sharedPreferences.getBool(MemoryKeys.darkMode.name) ?? false;
  }

  ThemeMode getThemeMode(){
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  void changeThemeMode(){
    Get.changeThemeMode(
        isSavedDarkMode()
            ? ThemeMode.light
            : ThemeMode.dark
    );
    saveThemeMode(! isSavedDarkMode());
  }

  //// Language Store ///////////////////////////////////////////
  isEnglishLanguage(){
    return _sharedPreferences.getBool(MemoryKeys.english.name) ?? false;
  }

  saveLanguage(bool isEnglish) async{
    await _sharedPreferences.setBool(MemoryKeys.english.name, isEnglish);
  }

  Locale getLanguage(){
    return isEnglishLanguage() ?  const Locale('en') :  const Locale('ar');
  }

  void changeLanguage(){
    Get.updateLocale(isEnglishLanguage() ? const Locale('ar') : const Locale('en'));
    saveLanguage(! isEnglishLanguage());
    Get.reload();
  }
}