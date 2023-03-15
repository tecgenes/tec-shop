import 'package:flutter/material.dart';
import 'package:tec_shop/core/ui/core_screen.dart';

class BrowseScreen extends CoreScreen{
  BrowseScreen({super.key});

  @override
  Widget mobileDevice(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.green,
      child: const Center(child: Text('Browse Screen'),),
    );
  }
}