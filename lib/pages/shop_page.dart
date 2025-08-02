import 'package:flutter/material.dart';

import '../components/gadget_tile.dart';
import '../models/gadget.dart';
import '../utils/colors.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GadgetTile(
              gadget: Gadget(
                name: "Nothing Headphone",
                price: "149",
                imagePath: "lib/images/Nothing-Headphones.png", // update as needed
                description: "Nothing Headphone offers a transparent build, active noise cancellation, 40-hour battery life, and deep, immersive sound for every beat.",
              ),
            ),
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(left: 25, top: 25, right: 25),
          child: Divider(
            color: AppColors.background,
          ),
        )
      ],
    );
  }
}
