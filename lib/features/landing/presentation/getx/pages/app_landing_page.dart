import 'package:get/get.dart';
import 'package:tec_shop/core/router/app_router.dart';
import 'package:tec_shop/features/landing/presentation/getx/bindings/app_landing_binding.dart';
import 'package:tec_shop/features/landing/presentation/screens/landing_screen.dart';

class AppLandingPage extends GetPage {
  AppLandingPage() : super(
    name: AppRouter.landing,
    page: () =>  LandingScreen(),
    binding: AppLandingBinding(),
  );
}