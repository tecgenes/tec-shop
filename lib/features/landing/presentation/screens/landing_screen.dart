import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tec_shop/core/router/app_router.dart';
import 'package:tec_shop/core/router/nested_router.dart';
import 'package:tec_shop/core/contracts/core_screen.dart';
import 'package:tec_shop/features/account/presentation/getx/pages/account_page.dart';
import 'package:tec_shop/features/browse/presentation/getx/pages/browse_page.dart';
import 'package:tec_shop/features/cart/presentation/getx/pages/cart_page.dart';
import 'package:tec_shop/features/home/presentation/getx/pages/home_page.dart';
import 'package:tec_shop/features/landing/presentation/components/app_search_component.dart';
import 'package:tec_shop/features/landing/presentation/components/bottom_navigation_bar_component.dart';
import 'package:tec_shop/features/landing/presentation/getx/controllers/app_landing_controller.dart';


class LandingScreen extends CoreScreen<AppLandingController>{
  LandingScreen({super.key});
  @override
  Widget mobileDevice(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppSearchComponent(),
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
        bottomNavigationBar:  SizedBox(
          height: Get.height * 0.09,
            child: BottomNavigationBarComponent(),
        ),
      ),
    );
  }

}

