import 'package:flutter/foundation.dart';
import 'package:sneakers_shop/models/gadget.dart';

class Cart extends ChangeNotifier {
  List<Gadget> shopGadgets = [
    Gadget(
      name: "Nothing Phone (1)",
      price: "399",
      imagePath: "lib/images/Nothing-Phone-1-white.png", // update path as needed
      description:
      "Nothing Phone (1) features a transparent design, smooth OLED display, fast performance, and a clean Android experience that stands out.",
    ),
    Gadget(
      name: "Nothing Headphone",
      price: "149",
      imagePath: "lib/images/Nothing-Headphones.png", // update as needed
      description:
          "Nothing Headphone offers a transparent build, active noise cancellation, 40-hour battery life, and deep, immersive sound for every beat.",
    ),
    Gadget(
      name: "Nothing Ear (1)",
      price: "99",
      imagePath: "lib/images/Nothing-Ear.png",
      description:
          "Nothing Ear delivers a sleek transparent design, powerful bass, clear calls, and long battery life in a compact form.",
    ),
  ];

  List<Gadget> userCard = [];

  List<Gadget> getShopItems() {
    return shopGadgets;
  }

  List<Gadget> getUserCard() {
    return userCard;
  }

  void addItemToCourt(Gadget gadget) {
    userCard.add(gadget);
    notifyListeners();
  }

  void removeItemToCourt(Gadget gadget) {
    userCard.remove(gadget);
    notifyListeners();
  }
}
