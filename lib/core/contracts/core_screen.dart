import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CoreScreen<Controller> extends GetResponsiveView<Controller>{
  CoreScreen({super.key});

  Widget mobileDevice(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return mobileDevice(context);
  }

}

