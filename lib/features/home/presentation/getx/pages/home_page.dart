import 'package:get/get.dart';
import 'package:tec_shop/core/router/app_router.dart';
import 'package:tec_shop/features/home/presentation/screens/home_screen.dart';

class HomePage extends GetPageRoute{
  HomePage() : super(
      routeName: AppRouter.home,
      page: ()=> HomeScreen(),
      transition: Transition.native
  );
}