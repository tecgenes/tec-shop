import 'package:get/get.dart';
import 'package:tec_shop/app/router/app_router.dart';
import 'package:tec_shop/app/ui/screens/browse/browse_screen.dart';

class BrowsePage extends GetPageRoute{
  BrowsePage() : super(
    routeName: AppRouter.browse,
    page: ()=> BrowseScreen(),
      transition: Transition.native
  );
}