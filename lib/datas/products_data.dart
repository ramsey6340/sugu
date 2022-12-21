// Exemple de produit
import 'package:flutter/material.dart';
import '../models/product.dart';


String description = "Wireless Controler for PS4 vous donne une experience inoubliable. Vous aurez le sentiment de vraiment maitriser votre jeu video, votre avatar, votre monde.\nN'entendez plus, sinon votre plays station risque de vous portez une pleinte de lui avoir priver de cet experience extra ordinaire";

List<Product> products = [
  Product(
    title: "Wireless Controler for PS4",
    description: description,
    images: [
      "assets/images/ps4_console_blue_1.png",
      "assets/images/ps4_console_blue_2.png",
      "assets/images/ps4_console_blue_3.png",
      "assets/images/ps4_console_blue_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 50000,
    nb_star: 4.5,
    is_favourite: true,
    is_popular: true,
  ),
  Product(
    title: "Nike Sport White - Man Pant",
    description: description,
    images: [
      "assets/images/Image Popular Product 2.png"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 10000,
    nb_star: 4,
    is_popular: true,
  ),
  Product(
    title: "Logitech Head",
    description: description,
    images: [
      "assets/images/wireless headset.png"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 7500,
    nb_star: 4,
    //is_favourite: true,
  ),
  Product(
    title: "Glove XC Omega - Polygon",
    description: description,
    images: [
      "assets/images/glap.png"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 5000,
    nb_star: 3,
  ),
];