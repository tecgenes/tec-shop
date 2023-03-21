import 'package:flutter/material.dart';
import 'package:tec_shop/core/contracts/core_screen.dart';
import 'package:tec_shop/features/landing/presentation/getx/controllers/app_landing_controller.dart';

class HomeScreen extends CoreScreen<AppLandingController>{
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
            ElevatedButton(
                onPressed: (){},
                child: const Text('Go to Test Screen')),

          ],
        ),
      )
    );
  }
}