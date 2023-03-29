// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tec_shop/core/contracts/core_widget.dart';
import 'package:tec_shop/core/license/general_license.dart';

class AppTitleWidget extends CoreWidget {
  String title;
  AppTitleWidget({super.key, required this.title});

  @override
  GeneralLicense get licenseCategory => GeneralLicense();

  @override
  bool get license => licenseCategory.canViewAppTitleWidget();

  @override
  Widget buildWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
        title,
        style: context.textTheme.headlineSmall,
      ),
    );
  }


}