import 'package:get/get.dart';
import 'package:tec_shop/app/router/app_router.dart';
import 'package:tec_shop/app/ui/screens/account/account_screen.dart';

class AccountPage extends GetPageRoute{
  AccountPage() : super(
    routeName: AppRouter.account,
    page: ()=> AccountScreen(),
    transition: Transition.native
  );
}