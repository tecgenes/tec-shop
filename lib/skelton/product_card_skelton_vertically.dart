import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tec_shop/core/mixins/size_mixin.dart';
class ProductCardSkeltonVertically extends StatelessWidget with SizeMixin{
   ProductCardSkeltonVertically({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(appWidgetProductCardPaddingAll),
      child: SizedBox(
        height: appWidgetProductCardHeight,
        width:  appWidgetProductCardWidth,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  height: appWidgetProductCardImageHeight,
                  width: appWidgetProductCardImageWidth,
                  decoration:  BoxDecoration(
                    color: Colors.black.withOpacity(0.04),
                    borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(appWidgetProductCardBorderRadiusCircular),
                      topRight: Radius.circular(appWidgetProductCardBorderRadiusCircular),
                    ),
                  ),
                ),
            ),

            Expanded(
              child: Container(
                height: appWidgetProductCardDetailsHeight,
                width: appWidgetProductCardDetailsWidth,
                padding: EdgeInsets.symmetric(
                  horizontal: appWidgetProductCardDetailsPadding,
                  vertical: appWidgetProductCardDetailsPadding,
                ),
                decoration:  BoxDecoration(
                  borderRadius:  BorderRadius.only(
                      bottomLeft: Radius.circular(appWidgetProductCardBorderRadiusCircular),
                      bottomRight: Radius.circular(appWidgetProductCardBorderRadiusCircular)
                  ),
                  color: Colors.white70,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: Get.height * 0.006,
                        width: Get.width * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.04),
                        ),
                      )
                    ),
                    const SizedBox(height: 5,),
                    Expanded(
                      child: Container(
                        height: Get.height * 0.006,
                        width: Get.width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.04),
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}