// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tec_shop/app/controllers/app_landing_controller.dart';
import 'package:tec_shop/app/license/home_license.dart';
import 'package:tec_shop/core/contracts/core_license.dart';
import 'package:tec_shop/core/ui/core_component.dart';

class BottomNavigationBarComponent extends CoreComponent<AppLandingController>{
  const BottomNavigationBarComponent({super.key});

  @override
  CoreLicense get licenseCategory => HomeLicense();

  @override
  bool get license => licenseCategory.canViewBottomBarComponent() ;

  @override
  Widget buildComponent(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Obx(
            ()=> BottomNavigationBar(
                currentIndex: controller.tabIndex.value,
                onTap: controller.onTabClick,
                items: const [
                  BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.ac_unit), backgroundColor: Colors.grey),
                  BottomNavigationBarItem(label: 'Browse',icon: Icon(Icons.access_alarm), backgroundColor: Colors.grey),
                  BottomNavigationBarItem(label: 'Cart',icon: Icon(Icons.accessible), backgroundColor: Colors.grey),
                  BottomNavigationBarItem(label: 'Account',icon: Icon(Icons.account_box_sharp), backgroundColor: Colors.grey),
                ],
            )
        )
    );
  }
}