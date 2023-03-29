// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tec_shop/core/contracts/core_controller.dart';
import 'package:tec_shop/core/contracts/core_license.dart';
import 'package:tec_shop/core/mixins/size_mixin.dart';
/*
* the widget shows according to user license (permissions) ,
*  every widget has one license
* */

 abstract class CoreWidget extends GetView<CoreController> with SizeMixin{
   CoreWidget({super.key});

  CoreLicense get licenseCategory;
  bool get license;
  Widget buildWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if(license){
      return buildWidget(context);
    }
    return const SizedBox();
  }
 }
