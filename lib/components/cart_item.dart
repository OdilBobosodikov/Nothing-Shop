import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/utils/colors.dart';

import '../models/cart.dart';
import '../models/gadget.dart';

class CartItem extends StatefulWidget {
  Gadget gadget;

  CartItem({super.key, required this.gadget});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemToCourt(widget.gadget);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.gadget.imagePath),
        title: Text(
          widget.gadget.name,
          style: TextStyle(color: AppColors.primeWhite),
        ),
        subtitle: Text(
          "\$" + widget.gadget.price,
          style: TextStyle(color: AppColors.secondaryGrey),
        ),
        trailing: IconButton(onPressed: removeItemFromCart, icon: Icon(Icons.delete, color: AppColors.primary,)),
      ),
    );
  }
}
