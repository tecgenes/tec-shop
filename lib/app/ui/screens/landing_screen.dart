import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tec_shop/app/controllers/app_landing_controller.dart';
import 'package:tec_shop/app/pages/bottombar/account_page.dart';
import 'package:tec_shop/app/pages/bottombar/browse_page.dart';
import 'package:tec_shop/app/pages/bottombar/cart_page.dart';
import 'package:tec_shop/app/pages/bottombar/home_page.dart';
import 'package:tec_shop/app/pages/helper/test_page.dart';
import 'package:tec_shop/app/router/app_router.dart';
import 'package:tec_shop/app/router/nested_router.dart';
import 'package:tec_shop/app/ui/components/app/bottom_navigation_bar_component.dart';
import 'package:tec_shop/core/ui/core_screen.dart';

class LandingScreen extends CoreScreen<AppLandingController>{
  LandingScreen({super.key});
  @override
  Widget mobileDevice(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
            ()=> IndexedStack(
              index: controller.tabIndex.value,
              children: [
                Navigator(
                  key: Get.nestedKey(NestedRouter.home),
                  initialRoute: AppRouter.home,
                  onGenerateRoute: (routeSettings){
                    if(routeSettings.name == AppRouter.home) return HomePage();
                    // Down here you can add all pages to nested navigate inside Home Page
                    if(routeSettings.name == '/test') return TestPage();
                    return HomePage();
                  },
                ),
                Navigator(
                  key: Get.nestedKey(NestedRouter.browse),
                  initialRoute: AppRouter.browse,
                  onGenerateRoute: (routeSettings){
                    if(routeSettings.name == AppRouter.browse) return BrowsePage();
                    // Down here you can add all pages to nested navigate inside Browse Page
                    return BrowsePage();
                  },
                ),
                Navigator(
                  key: Get.nestedKey(NestedRouter.cart),
                  initialRoute: AppRouter.cart,
                  onGenerateRoute: (routeSettings){
                    if(routeSettings.name == AppRouter.cart) return CartPage();
                    // Down here you can add all pages to nested navigate inside Browse Page
                    return CartPage();
                  },
                ),
                Navigator(
                  key: Get.nestedKey(NestedRouter.account),
                  initialRoute: AppRouter.account,
                  onGenerateRoute: (routeSettings){
                    if(routeSettings.name == AppRouter.account) return AccountPage();
                    // Down here you can add all pages to nested navigate inside Browse Page
                    return AccountPage();
                  },
                ),
              ],
            ),
        ),
        bottomNavigationBar: const BottomNavigationBarComponent(),
      ),
    );
  }

}