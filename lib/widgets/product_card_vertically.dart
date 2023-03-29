// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tec_shop/core/contracts/core_widget.dart';
import 'package:tec_shop/core/license/general_license.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductCardVerticallyWidget extends CoreWidget {
  String imageUrl;
  String title;
  String price;
  void Function() onTap;
  bool? hasOffer;
  String offerTitle;

  ProductCardVerticallyWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.onTap,
    this.hasOffer = false,
    this.offerTitle = "12% OFF"
  });

  @override
  GeneralLicense get licenseCategory => GeneralLicense();

  @override
  bool get license => licenseCategory.canViewProductCardVertically();

  @override
  Widget buildWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(appWidgetProductCardPaddingAll),
      child: InkWell(
        onTap: onTap,
        borderRadius:
            BorderRadius.circular(appWidgetProductCardBorderRadiusCircular),
        child: SizedBox(
          height: appWidgetProductCardHeight,
          width: appWidgetProductCardWidth,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  placeholder: (context, url) =>
                      SvgPicture.asset('assets/images/no_image.svg'),
                  errorWidget: (context, url, error) =>
                      SvgPicture.asset('assets/images/no_image.svg'),
                  imageBuilder: (context, imageProvider) => Container(
                    height: appWidgetProductCardImageHeight,
                    width: appWidgetProductCardImageWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            appWidgetProductCardBorderRadiusCircular),
                        topRight: Radius.circular(
                            appWidgetProductCardBorderRadiusCircular),
                      ),
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                    ),
                    child: Stack(
                      children: [
                        hasOffer!
                            ? Positioned(
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      appWidgetProductCardOfferStickerPadding),
                                  child: Container(
                                    height:
                                        appWidgetProductCardOfferStickerHeight,
                                    width:
                                        appWidgetProductCardOfferStickerWidth,
                                    color: context.theme.primaryColor,
                                    child: Center(
                                      child: Text(
                                        offerTitle,
                                        overflow: TextOverflow.ellipsis,
                                        style: context.textTheme.titleSmall!
                                            .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                            appWidgetProductCardBorderRadiusCircular),
                        bottomRight: Radius.circular(
                            appWidgetProductCardBorderRadiusCircular)),
                    color: Get.isDarkMode ? Colors.black26 : Colors.white70,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    image: hasOffer == true ?  const DecorationImage(
                      image: ExactAssetImage('assets/images/grades/classic.png'),
                      fit: BoxFit.cover,
                      opacity: 0.40
                    ): null
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(title,
                            style: context.textTheme.titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis),
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: price,
                            style: context.textTheme.titleMedium,
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' SAR',
                                  style: context.textTheme.labelMedium),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
