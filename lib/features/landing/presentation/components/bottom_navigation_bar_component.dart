// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tec_shop/core/license/home_license.dart';
import 'package:tec_shop/core/contracts/core_license.dart';
import 'package:tec_shop/core/contracts/core_component.dart';
import 'package:tec_shop/features/landing/presentation/getx/controllers/app_landing_controller.dart';

class BottomNavigationBarComponent extends CoreComponent<AppLandingController> {
   BottomNavigationBarComponent({super.key});

  @override
  CoreLicense get licenseCategory => HomeLicense();

  @override
  bool get license => licenseCategory.canViewBottomBarComponent();
  @override
  Widget buildComponent(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Obx(() => BottomNavigationBar(
              currentIndex: controller.tabIndex.value,
              onTap: controller.onTabClick,
              items: [
                BottomNavigationBarItem(
                  label: 'home'.tr,
                  icon: Badge(
                    isLabelVisible: controller.isUserSeeOfferInHomeScreen(),
                      label:  Text("offer".tr),
                      child: _bottomBarIcon(label:"Home"),
                  ),
                  activeIcon: _bottomBarIcon(label: "Home", color: context.theme.primaryColor,),
                ),
                BottomNavigationBarItem(
                  label: 'browse'.tr,
                  icon: Badge(
                    isLabelVisible: controller.isUserSeeWhatsNewInBrowseScreen(),
                      label:  Text("new".tr),
                      child: _bottomBarIcon(label:"Browse"),
                  ),
                  activeIcon: _bottomBarIcon(label: "Browse", color: context.theme.primaryColor,),
                ),
                BottomNavigationBarItem(
                  label: 'cart'.tr,
                  icon: Badge(
                    isLabelVisible: controller.isCartHisItem(),
                    label: Text("${controller.cartItem.length}"),
                    child: _bottomBarIcon(label:"Cart"),
                  ),
                  activeIcon: _bottomBarIcon(label: "Cart", color: context.theme.primaryColor,),
                ),
                BottomNavigationBarItem(
                  label: 'account'.tr,
                  icon: Badge(
                    isLabelVisible: true,
                      label: Text("edit".tr),
                      child: _bottomBarIcon(label:"Account"),
                  ),
                  activeIcon: _bottomBarIcon(label: "Account", color: context.theme.primaryColor,),
                ),
              ],
            )));
  }

  Widget _bottomBarIcon({required String label, Color color = Colors.black38}) {
    switch (label) {
      case "Home":
        return SvgPicture.asset(
          'assets/icons/bottombar/home.svg',
          color: color,

        );
      case "Browse":
        return SvgPicture.asset(
            'assets/icons/bottombar/category.svg',
          color: color,
        );
      case "Cart":
        return SvgPicture.asset(
          'assets/icons/bottombar/shopping-bag.svg',
          color: color,
        );
      default:
        return SvgPicture.asset(
            'assets/icons/bottombar/customer.svg',
          color: color,
        );
    }
  }
}
