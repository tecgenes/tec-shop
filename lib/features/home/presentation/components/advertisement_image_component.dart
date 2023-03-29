// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tec_shop/core/contracts/core_component.dart';
import 'package:tec_shop/core/license/general_license.dart';

class AdvertisementImageComponent extends CoreComponent {
  String advImage;

  AdvertisementImageComponent({super.key,
    required this.advImage,
  });

  @override
  GeneralLicense get licenseCategory => GeneralLicense();

  @override
  bool get license => licenseCategory.canViewAdvertisementImageComponent();

  @override
  Widget buildComponent(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: CachedNetworkImage(
        imageUrl: advImage,
        placeholder: (context, url) => Container(),
        errorWidget: (context, url, error) => Container(),
        imageBuilder: (context, imageProvider) => Container(
          height: homeScreenAdvertisementImageHeight,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}
