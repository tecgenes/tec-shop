import 'package:flutter/material.dart';
import 'package:tec_shop/core/contracts/core_screen.dart';

class CartScreen extends CoreScreen{
  CartScreen({super.key});

  @override
  Widget mobileDevice(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.orangeAccent,
      child: const Center(child: Text('Cart Screen'),),
    );
  }
}