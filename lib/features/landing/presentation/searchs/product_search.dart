import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProductSearch extends SearchDelegate{

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: ()=> query = "",
          icon: Icon(Icons.close, color: context.theme.primaryColor,
          ),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: ()=> close(context, null),
        icon: Icon(
          Icons.navigate_before,
          color: context.theme.primaryColor,
        ),
    );

  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
              "assets/icons/searching.svg",
              fit: BoxFit.contain,
              width: Get.width * 0.50,
            excludeFromSemantics: true,
          ),
          const SizedBox(height: 5,),
          Text("Looking for somthing!", style: context.textTheme.titleLarge,)
        ],
      ),
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith();
  }

  @override
  String? get searchFieldLabel => "search".tr;

  @override
  TextStyle? get searchFieldStyle => const TextStyle(
    fontSize: 16
  );

  @override
  InputDecorationTheme? get searchFieldDecorationTheme =>  InputDecorationTheme(
    border: InputBorder.none,
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusColor: Get.theme.primaryColor,
    activeIndicatorBorder: BorderSide.none,
    outlineBorder: BorderSide.none,
    focusedErrorBorder: InputBorder.none,
    hoverColor: Get.theme.primaryColor,

  );

}
