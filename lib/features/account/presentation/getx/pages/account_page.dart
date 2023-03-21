import 'package:get/get.dart';
import 'package:tec_shop/core/router/app_router.dart';
import 'package:tec_shop/features/account/presentation/screens/account_screen.dart';

class AccountPage extends GetPageRoute{
  AccountPage() : super(
    routeName: AppRouter.account,
    page: ()=> AccountScreen(),
    transition: Transition.native
  );
}