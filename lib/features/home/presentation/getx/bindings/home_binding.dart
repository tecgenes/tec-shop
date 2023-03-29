import 'package:get/get.dart';
import 'package:tec_shop/features/home/presentation/getx/controllers/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}