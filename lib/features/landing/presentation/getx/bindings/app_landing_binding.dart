import 'package:get/get.dart';
import 'package:tec_shop/features/landing/presentation/getx/controllers/app_landing_controller.dart';

class AppLandingBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AppLandingController>(() => AppLandingController());
  }
}