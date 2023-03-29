// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tec_shop/core/contracts/core_license.dart';
import 'package:tec_shop/core/mixins/size_mixin.dart';

/*
* the component shows according to user license (permissions) ,
*  every component has one license
* */
 abstract class CoreComponent<Controller> extends GetView<Controller> with SizeMixin{
  CoreComponent({super.key});
  Widget buildComponent(BuildContext context);
  CoreLicense get licenseCategory;
  bool get license;

  @override
  Widget build(BuildContext context) {
   if(license){
    return buildComponent(context);
   }
    return const SizedBox();
  }
}