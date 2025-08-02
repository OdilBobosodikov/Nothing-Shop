import 'package:flutter/material.dart';
import 'package:sneakers_shop/utils/colors.dart';

import '../models/gadget.dart';

class GadgetTile extends StatelessWidget {
  Gadget gadget;
  void Function()? onTap;
  GadgetTile({super.key, required this.gadget, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  gadget.imagePath,
                  fit: BoxFit.contain,
                  width: 250,
                  height: 250,
                ),
                const SizedBox(height: 10),
                Text(
                  gadget.description,
                  style: TextStyle(color: AppColors.secondaryGrey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      gadget.name,
                      style: TextStyle(
                        color: AppColors.primeWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    Text(
                      "\$" + gadget.price,
                      style: TextStyle(color: AppColors.secondaryGrey),
                    ),
                  ],
                ),

                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.primeWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Icon(Icons.add, color: AppColors.background),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
