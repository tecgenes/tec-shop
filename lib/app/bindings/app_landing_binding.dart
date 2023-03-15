import 'package:get/get.dart';
import 'package:tec_shop/app/controllers/app_landing_controller.dart';

class AppLandingBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AppLandingController>(() => AppLandingController());
  }
}