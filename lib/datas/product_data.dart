// Exemple de produit
import 'package:flutter/material.dart';
import '../models/product.dart';
import '../datas/categories.dart';


String description = ""
    "Wireless Controler for PS4 vous donne une experience inoubliable."
    " Vous aurez le sentiment de vraiment maitriser votre jeu video,"
    " votre avatar, votre monde."
    " N'entendez plus, sinon votre plays station risque de vous portez une pleinte "
    "de lui avoir priver de cet experience extra ordinaire.";

List<Product> products = [
  Product(
    id: 2,
    title: "Chaussure 1",
    description: description,
    images: [
      "assets/images/chaussure1.jpg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 5000,
    nbStar: 4,
    nbLike: 21,
    isPopular: true,
    isFavourite: true,
    nbTotalProduct: 30,
    category: [Categories.chaussure, Categories.homme],
  ),
  Product(
    id: 2,
    title: "Chaussure 3",
    description: description,
    images: [
      "assets/images/chaussure3.jpg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 75000,
    nbStar: 4,
    nbLike: 10,
    isPopular: true,
    isFavourite: true,
    nbTotalProduct: 20, category: [Categories.chaussure, Categories.homme],
  ),
  Product(
    id: 2,
    title: "Foulard 1",
    description: description,
    images: [
      "assets/images/foulard1.jpg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 1000,
    nbStar: 4,
    nbLike: 100,
    isPopular: true,
    nbTotalProduct: 100, category: [Categories.beaute, Categories.femme],
  ),
  Product(
    id: 2,
    title: "Foulard 2",
    description: description,
    images: [
      "assets/images/foulard2.jpg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 2000,
    nbStar: 4,
    nbLike: 60,
    isPopular: true,
    isFavourite: true,
    nbTotalProduct: 60, category: [Categories.beaute, Categories.femme],
  ),
  Product(
    id: 2,
    title: "Montre 1",
    description: description,
    images: [
      "assets/images/montre1.jpg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 5000,
    nbStar: 4,
    nbLike: 5,
    isPopular: true,
    nbTotalProduct: 30, category: [Categories.homme, Categories.accessoire],
  ),
  Product(
    id: 2,
    title: "Montre 4",
    description: description,
    images: [
      "assets/images/montre4.jpeg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 2500,
    nbStar: 4,
    nbLike: 20,
    isPopular: true,
    isFavourite: true,
    nbTotalProduct: 13, category: [Categories.homme, Categories.accessoire],
  ),
  Product(
    id: 2,
    title: "Pantallon Homme",
    description: description,
    images: [
      "assets/images/pant1.jpg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 5000,
    nbStar: 4,
    nbLike: 34,
    isPopular: true,
    nbTotalProduct: 1, category: [Categories.vetement, Categories.homme],
  ),
  Product(
    id: 2,
    title: "PC 1",
    description: description,
    images: [
      "assets/images/pc1.jpg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 100000,
    nbStar: 4,
    nbLike: 30,
    isPopular: true,
    nbTotalProduct: 20, category: [Categories.electronique],
  ),
  Product(
    id: 2,
    title: "PC 2",
    description: description,
    images: [
      "assets/images/pc2.jpg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 300000,
    nbStar: 4,
    nbLike: 56,
    isPopular: true,
    isFavourite: true,
    nbTotalProduct: 30, category: [Categories.electronique],
  ),

  Product(
    id: 1,
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
    nbStar: 4.5,
    nbLike: 20,
    isFavourite: true,
    isPopular: true,
    nbTotalProduct: 40, category: [Categories.jeux],
  ),
  Product(
    id: 2,
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
    nbStar: 4,
    nbLike: 0,
    isPopular: true,
    nbTotalProduct: 200, category: [Categories.sport],
  ),
  Product(
    id: 3,
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
    nbStar: 4,
    nbLike: 31,
    nbTotalProduct: 75, category: [Categories.electronique],
  ),
  Product(
    id: 4,
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
    nbStar: 3,
    nbLike: 14,
    nbTotalProduct: 30, category: [Categories.beaute],

  ),
];