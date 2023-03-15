import 'package:get/get.dart';
import 'package:tec_shop/app/router/nested_router.dart';
import 'package:tec_shop/base/controllers/base_app_landing_controller.dart';

class AppLandingController extends BaseAppLandingController with GetTickerProviderStateMixin{
  RxInt tabIndex = 0.obs;

  void onTabClick(int newTab){
    Get.back(id: NestedRouter.home);
    Get.back(id: NestedRouter.browse);
    Get.back(id: NestedRouter.cart);
    Get.back(id: NestedRouter.account);
    tabIndex(newTab);
  }
}