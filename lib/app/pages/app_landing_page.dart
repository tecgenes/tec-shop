import 'package:get/get.dart';
import 'package:tec_shop/app/bindings/app_landing_binding.dart';
import 'package:tec_shop/app/router/app_router.dart';
import 'package:tec_shop/app/ui/screens/Landing_screen.dart';

class AppLandingPage extends GetPage {
  AppLandingPage() : super(
    name: AppRouter.landing,
    page: () =>  LandingScreen(),
    binding: AppLandingBinding(),
  );
}