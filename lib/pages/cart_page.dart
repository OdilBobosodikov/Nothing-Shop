import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/models/gadget.dart';

import '../components/cart_item.dart';
import '../models/cart.dart';
import '../utils/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Cart",
              style: TextStyle(
                color: AppColors.primeWhite,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCard().length,
                itemBuilder: (context, index) {
                  Gadget gadget = value.getUserCard()[index];
                  return CartItem(gadget: gadget);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
