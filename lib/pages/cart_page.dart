import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Cart", style: TextStyle(color: AppColors.primeWhite)),
    );
  }
}
