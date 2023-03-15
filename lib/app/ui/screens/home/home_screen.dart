import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tec_shop/app/router/nested_router.dart';
import 'package:tec_shop/core/ui/core_screen.dart';

class HomeScreen extends CoreScreen{
  HomeScreen({super.key});

  @override
  Widget mobileDevice(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.blueAccent,
      child: Center(
        child: Column(
          children: [
            const Center(child: Text('Home Screen'),),
            ElevatedButton(onPressed: ()=> Get.toNamed('/test', id: NestedRouter.home), child: const Text('Go to Test Screen')),

          ],
        ),
      )
    );
  }
}