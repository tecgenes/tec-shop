import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:tec_shop/core/contracts/core_screen.dart';
import 'package:tec_shop/features/home/presentation/components/advertisement_image_component.dart';
import 'package:tec_shop/features/home/presentation/components/home_header_component.dart';
import 'package:tec_shop/features/home/presentation/getx/controllers/home_controller.dart';
import 'package:tec_shop/widgets/app_title_widget.dart';
import 'package:tec_shop/widgets/product_card_vertically.dart';

class HomeScreen extends CoreScreen<HomeController> {
  HomeScreen({super.key});
  @override
  Widget mobileDevice(BuildContext context) {
    Random random = Random();
    return Column(
      children: [
        HomeHeaderComponent(
          userName: 'عبدالرحمن',
          grade: 'كلاسيك',
          gradeColor: Colors.white,
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AdvertisementImageComponent(
                  advImage:
                      "https://cdn.shopify.com/s/files/1/0666/4214/9685/files/0_slider_2.jpg?v=1668081305&width=3840",
                ),
                AppTitleWidget(title: 'featured_products'.tr),
                ResponsiveGridList(
                  horizontalGridMargin: 20,
                  verticalGridMargin: 20,
                  minItemWidth: 100,
                  maxItemsPerRow: 2,
                  listViewBuilderOptions: ListViewBuilderOptions(
                      shrinkWrap: true, physics: const ScrollPhysics()),
                  children: List.generate(
                    8,
                    (index) => ProductCardVerticallyWidget(
                      onTap: () {},
                      imageUrl:
                          "https://imagesvc.meredithcorp.io/v3/mm/image?q=60&c=sc&poi=face&url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_1200x900%2Fpublic%2F1542062283%2Fchocolate-and-cream-layer-cake-1812-cover.jpg%3Fitok%3DR_xDiShk",
                      title: "Cake Choclet",
                      price: '210',
                      hasOffer: random.nextBool(),
                    ),
                  ),
                ),
              ],
              // shoud remove
            ),
          ),
        ),
      ],
    );
  }
}


