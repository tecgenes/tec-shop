import 'package:get/get.dart';
import 'package:tec_shop/core/router/app_router.dart';
import 'package:tec_shop/features/cart/presentation/screens/cart_screen.dart';

class CartPage extends GetPageRoute{
  CartPage() : super(
      routeName: AppRouter.cart,
      page: ()=> CartScreen(),
      transition: Transition.native
  );
}