import 'package:tec_shop/core/contracts/core_license.dart';

class GeneralLicense extends CoreLicense{

  bool canViewCategoryItemsComponent() {
    return true;
  }

  bool canViewAdvertisementImageComponent() {
    return true;
  }

  bool canViewProductCardVertically(){
    return true;
  }

  bool canViewAppTitleWidget(){
    return true;
  }

  bool canViewHomeHeaderComponent(){
    return true;
  }


  bool canCachedImage(){
    return true;
  }


}