import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tec_shop/core/config/app_configration.dart';
import 'package:tec_shop/tec_shop.dart';

void main() async{
  await AppConfigration.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp( const TecShop()));
}
