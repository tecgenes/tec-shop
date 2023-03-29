// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tec_shop/core/contracts/core_component.dart';
import 'package:tec_shop/core/license/general_license.dart';
import 'package:tec_shop/features/home/presentation/getx/controllers/home_controller.dart';

class HomeHeaderComponent extends CoreComponent<HomeController> {
  String userName;
  String grade;
  Color gradeColor;

  HomeHeaderComponent({
    super.key,
    required this.userName,
    required this.grade,
    required this.gradeColor,
  });

  @override
  GeneralLicense get licenseCategory => GeneralLicense();

  @override
  bool get license => licenseCategory.canViewHomeHeaderComponent();

  @override
  Widget buildComponent(BuildContext context) {
    return Container(
      height: Get.height * 0.12,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
          image: DecorationImage(
            image:  ExactAssetImage('assets/images/grades/classic.png'),
            fit: BoxFit.cover,
          )),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'welcome'.tr,
              style: context.textTheme.titleMedium!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    userName,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleLarge!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: Get.height * 0.05,
                    width: Get.width * 0.5,
                    decoration: BoxDecoration(
                        color: gradeColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            grade,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.titleMedium!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'learn_more'.tr,
                              style: context.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
