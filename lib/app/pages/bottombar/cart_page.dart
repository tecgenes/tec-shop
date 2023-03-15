import 'package:get/get.dart';
import 'package:tec_shop/app/router/app_router.dart';
import 'package:tec_shop/app/ui/screens/cart/cart_screen.dart';

class CartPage extends GetPageRoute{
  CartPage() : super(
      routeName: AppRouter.cart,
      page: ()=> CartScreen(),
      transition: Transition.native
  );
}