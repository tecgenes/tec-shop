import 'package:get/get.dart';
import 'package:tec_shop/app/router/app_router.dart';
import 'package:tec_shop/app/ui/screens/home/home_screen.dart';

class HomePage extends GetPageRoute{
  HomePage() : super(
      routeName: AppRouter.home,
      page: ()=> HomeScreen(),
      transition: Transition.native
  );
}