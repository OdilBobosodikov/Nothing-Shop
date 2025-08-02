import 'package:sneakers_shop/models/gadget.dart';

class Cart {
  List<Gadget> shopGadgets = [
    Gadget(
      name: "Nothing Headphone",
      price: "149",
      imagePath: "lib/images/Nothing-Headphones.png", // update as needed
      description:
          "Nothing Headphone offers a transparent build, active noise cancellation, 40-hour battery life, and deep, immersive sound for every beat.",
    ),
    Gadget(
      name: "CMF Watch Pro 2",
      price: "69",
      imagePath: "lib/images/Nothing-Watch.png", // update as needed
      description:
          "CMF Watch Pro 2 blends a clean, modern design with smart fitness tracking, crisp visuals, and all-day comfort on your wrist.",
    ),
    Gadget(
      name: "Nothing Ear",
      price: "99",
      imagePath: "assets/images/nothing_ear.png",
      description: "Nothing Ear delivers a sleek transparent design, powerful bass, clear calls, and long battery life in a compact form.",
    ),
    Gadget(
      name: "Nothing Phone (3)",
      price: "549",
      imagePath: "assets/images/nothing_phone_3.png",
      description:
          "Nothing Phone (3) combines flagship power, a transparent body, advanced cameras, and a seamless user experience that redefines Android.",
    ),
  ];

  List<Gadget> userCard = [];

  List<Gadget> getShopItems()
  {
    return shopGadgets;
  }

  List<Gadget> getUserCard()
  {
    return userCard;
  }

  void addItemToCourt(Gadget gadget) => userCard.add(gadget);
  void removeItemToCourt(Gadget gadget) => userCard.remove(gadget);
}
