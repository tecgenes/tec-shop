import 'package:flutter/material.dart';
import 'package:tec_shop/core/keys/alrt_keys.dart';


mixin AlrtMixin{
  void showAlrt(BuildContext context, AlrtKeys alrt, String description ){
    String titleContent;
    Color backgroundColor;
    Color iconColor;
    switch(alrt){
      case AlrtKeys.info:
        titleContent = "Hi there!";
        break;
      case AlrtKeys.error:
        titleContent = "Oh snap!";
        break;
      case AlrtKeys.warning:
        titleContent = "Warning!";
        break;
      case AlrtKeys.success:
        titleContent = "Well done!";
        break;
    }

    switch(alrt){
      case AlrtKeys.error:
        backgroundColor = const Color(0xFFC72C41);
        break;
      case AlrtKeys.warning:
        backgroundColor = const Color(0xFFEF8D32);
        break;
      case AlrtKeys.info:
        backgroundColor = const Color(0xFF0170E0);
        break;
      case AlrtKeys.success:
        backgroundColor = const Color(0xFF0B7040);
        break;
    }

    switch(alrt){
      case AlrtKeys.error:
        iconColor = const Color(0xFF801336);
        break;
      case AlrtKeys.warning:
        iconColor = const Color(0xFFcc561e);
        break;
      case AlrtKeys.info:
        iconColor = const Color(0xFF06478A);
        break;
      case AlrtKeys.success:
        iconColor = const Color(0xFF014E32);
        break;
    }


    // ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: CustomSnackBarContent(
    //         title: titleContent,
    //         description: description,
    //         backgroundColor: backgroundColor,
    //         iconColor: iconColor,
    //       ),
    //       behavior: SnackBarBehavior.floating,
    //       backgroundColor: Colors.transparent,
    //       elevation: 0,
    //     )
    // );
  }
}