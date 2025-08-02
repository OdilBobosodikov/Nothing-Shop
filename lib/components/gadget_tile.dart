import 'package:flutter/material.dart';
import 'package:sneakers_shop/utils/colors.dart';

import '../models/gadget.dart';

class GadgetTile extends StatelessWidget {
  Gadget gadget;

  GadgetTile({super.key, required this.gadget});

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
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Column(
              children: [
                Image.asset(gadget.imagePath),
                Text(
                  gadget.description,
                  style: TextStyle(
                    color: Colors.white24,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0),
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


                    Text("\$"+gadget.price, style: TextStyle(color: Colors.white24),),
                  ],
                ),

                Container(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
