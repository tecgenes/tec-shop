import 'package:get/get.dart';
import 'package:tec_shop/core/router/app_router.dart';
import 'package:tec_shop/features/browse/presentation/screens/browse_screen.dart';

class BrowsePage extends GetPageRoute{
  BrowsePage() : super(
    routeName: AppRouter.browse,
    page: ()=> BrowseScreen(),
      transition: Transition.native
  );
}