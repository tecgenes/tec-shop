// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tec_shop/core/contracts/core_component.dart';
import 'package:tec_shop/core/license/general_license.dart';

class CategoryItemsComponent extends CoreComponent {
  String categoryTitle;
  String categoryImage;

  CategoryItemsComponent({
    super.key,
    required this.categoryTitle,
    required this.categoryImage,
  });

  @override
  GeneralLicense get licenseCategory => GeneralLicense();

  @override
  bool get license => licenseCategory.canViewCategoryItemsComponent();

  @override
  Widget buildComponent(BuildContext context) {
    return Container(
        height: homeScreenCategoryItemsHeight,
        margin: EdgeInsets.symmetric(
            vertical: homeScreenCategoryItemsMarginVertically),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(
                  left: homeScreenCategoryItemsSpaceBetweenEachItems),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(
                        homeScreenCategoryItemsInkWellRadiius),
                    child: CircleAvatar(
                      backgroundColor: context.theme.primaryColor,
                      radius: homeScreenCategoryItemFristCircleBorder,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: homeScreenCategoryItemSecondCircleBorder,
                        child: CachedNetworkImage(
                          imageUrl: categoryImage,
                          placeholder: (context, url) => Container(),
                          errorWidget: (context, url, error) => Container(),
                          imageBuilder: (context, imageProvider) =>
                              CircleAvatar(
                            backgroundImage: imageProvider,
                            radius: homeScreenCategoryItemImageCircleBorder,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height:
                        homeScreenCategoryItemsSpaceBetweenImageTextVertically,
                  ),
                  Text(

                    categoryTitle,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleMedium,
                  ),
                ],
              ),
            );
          },
        ));
  }
}
