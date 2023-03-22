import 'package:get/get.dart';
import 'package:tec_shop/core/contracts/core_controller.dart';
import 'package:tec_shop/core/router/nested_router.dart';

class AppLandingController extends CoreController with GetTickerProviderStateMixin{
  RxInt tabIndex = 0.obs;
  List<dynamic> cartItem = ["p1"];

  void onTabClick(int newTab){
    Get.back(id: NestedRouter.home);
    Get.back(id: NestedRouter.browse);
    Get.back(id: NestedRouter.cart);
    Get.back(id: NestedRouter.account);
    tabIndex(newTab);
  }

  isUserSeeOfferInHomeScreen(){
    return true;
  }

  isUserSeeWhatsNewInBrowseScreen(){
    return true;
  }

  isUserUpdateHisAccount(){
    return true;
  }

  isCartHisItem(){
    return cartItem.isNotEmpty ? true : false ;
  }
}