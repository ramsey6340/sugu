// Exemple de produit

import 'package:flutter/material.dart';
import '../models/product.dart';

List<Product> products = [
  Product(
    title: "Wireless Controler for PS4",
    description: "description",
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
    rating: 4.8,
    is_favourite: true,
    is_popular: true,
  ),
  Product(
    title: "Nike Sport White - Man Pant",
    description: "description",
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
    rating: 4.1,
    is_popular: true,
  ),
  Product(
    title: "Logitech Head",
    description: "description",
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
    rating: 4.1,
    //is_favourite: true,
  ),
  Product(
    title: "Glove XC Omega - Polygon",
    description: "description",
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
    rating: 4.1,
  ),
];