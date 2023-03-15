import 'package:flutter/material.dart';
import 'package:tec_shop/core/ui/core_screen.dart';

class TestScreen extends CoreScreen{
  TestScreen({super.key});

  @override
  Widget mobileDevice(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.deepPurple,
      child: const Center(child: Text('Test Screen'),),
    );
  }
}