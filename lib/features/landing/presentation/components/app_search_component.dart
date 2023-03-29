import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tec_shop/core/contracts/core_component.dart';
import 'package:tec_shop/core/contracts/core_license.dart';
import 'package:tec_shop/core/license/general_license.dart';
import 'package:tec_shop/features/landing/presentation/getx/controllers/app_landing_controller.dart';
import 'package:tec_shop/features/landing/presentation/searchs/product_search.dart';

class AppSearchComponent extends CoreComponent<AppLandingController> implements PreferredSize{

  @override
  Widget get child => build(Get.context!);

  @override
  Size get preferredSize => Size(double.infinity, Get.height * 0.08);

  @override
  CoreLicense get licenseCategory => GeneralLicense();

  @override
  bool get license => licenseCategory.canViewSearchField();

  AppSearchComponent({
    super.key,
  });

  @override
  Widget buildComponent(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      flexibleSpace: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        height: Get.height * 0.06,
        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(Get.height * 0.01),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: InkWell(
          onTap: ()=> showSearch(
            context: context,
            delegate: ProductSearch(),
            useRootNavigator: false,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: SvgPicture.asset('assets/icons/search.svg', color: context.theme.primaryColor,)),
              Expanded(
                flex: 6,
                child: Text('search'.tr)
              ),
            ],
          ),
        ),
      ),
    );
  }

}