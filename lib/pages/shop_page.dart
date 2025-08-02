import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/gadget_tile.dart';
import '../models/cart.dart';
import '../models/gadget.dart';
import '../utils/colors.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addGadgetToCart(Gadget gadget) {
    Provider.of<Cart>(context, listen: false).addItemToCourt(gadget);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: AppColors.primeWhite,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search", style: TextStyle(color: AppColors.secondary)),
                Icon(Icons.search, color: AppColors.secondary),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "OUR CHOICE 🔥",
                  style: TextStyle(
                    color: AppColors.primeWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: value.getShopItems().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Gadget gadget = value.getShopItems()[index];
                return GadgetTile(
                  gadget: gadget,
                  onTap: () => addGadgetToCart(gadget),
                );
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 25, top: 25, right: 25),
            child: Divider(color: AppColors.background),
          ),
        ],
      ),
    );
  }
}
