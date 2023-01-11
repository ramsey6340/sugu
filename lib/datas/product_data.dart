// Exemple de produit

import 'package:flutter/material.dart';
import 'package:sugu/datas/store_data.dart';
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
    productId: "1",
    name: "Chaussure 1",
    description: description,
    images: [
      "assets/images/chaussure1.jpg"
    ],
    price: 5000,
    nbStar: 4,
    nbLike: 21,
    isPopular: true,
    isFavourite: true,
    nbTotalProduct: 30,
    category: [Categories.chaussure, Categories.homme],
    storeId: stores[0].storeId,
  ),
  Product(
    productId: "2",
    name: "Chaussure 3",
    description: description,
    images: [
      "assets/images/chaussure3.jpg"
    ],
    price: 75000,
    nbStar: 4,
    nbLike: 10,
    isPopular: true,
    isFavourite: true,
    nbTotalProduct: 20, category: [Categories.chaussure, Categories.homme],
    storeId: stores[1].storeId,
  ),
  Product(
    productId: "3",
    name: "Foulard 1",
    description: description,
    images: [
      "assets/images/foulard1.jpg"
    ],
    price: 1000,
    nbStar: 4,
    nbLike: 100,
    isPopular: true,
    nbTotalProduct: 100, category: [Categories.beaute, Categories.femme],
    storeId: stores[2].storeId,
  ),
  Product(
    productId: "4",
    name: "Foulard 2",
    description: description,
    images: [
      "assets/images/foulard2.jpg"
    ],

    price: 2000,
    nbStar: 4,
    nbLike: 60,
    isPopular: true,
    isFavourite: true,
    nbTotalProduct: 60, category: [Categories.beaute, Categories.femme],
    storeId: stores[0].storeId,
  ),
  Product(
    productId: "5",
    name: "Montre 1",
    description: description,
    images: [
      "assets/images/montre1.jpg"
    ],
    price: 5000,
    nbStar: 4,
    nbLike: 5,
    isPopular: true,
    nbTotalProduct: 30, category: [Categories.homme, Categories.accessoire],
    storeId: stores[1].storeId,
  ),
  Product(
    productId: "6",
    name: "Montre 4",
    description: description,
    images: [
      "assets/images/montre4.jpeg"
    ],
    price: 2500,
    nbStar: 4,
    nbLike: 20,
    isPopular: true,
    isFavourite: true,
    nbTotalProduct: 13, category: [Categories.homme, Categories.accessoire],
    storeId: stores[2].storeId,
  ),
  Product(
    productId: "7",
    name: "Pantallon Homme",
    description: description,
    images: [
      "assets/images/pant1.jpg"
    ],
    price: 5000,
    nbStar: 4,
    nbLike: 34,
    isPopular: true,
    nbTotalProduct: 1, category: [Categories.vetement, Categories.homme],
    storeId: stores[0].storeId,
  ),
  Product(
    productId: "8",
    name: "PC 1",
    description: description,
    images: [
      "assets/images/pc1.jpg"
    ],
    price: 100000,
    nbStar: 4,
    nbLike: 30,
    isPopular: true,
    nbTotalProduct: 20, category: [Categories.electronique],
    storeId: stores[1].storeId,
  ),
  Product(
    productId: "9",
    name: "PC 2",
    description: description,
    images: [
      "assets/images/pc2.jpg"
    ],
    price: 300000,
    nbStar: 4,
    nbLike: 56,
    isPopular: true,
    isFavourite: true,
    nbTotalProduct: 30, category: [Categories.electronique],
    storeId: stores[2].storeId,
  ),

  Product(
    productId: "10",
    name: "Wireless Controler for PS4",
    description: description,
    images: [
      "assets/images/ps4_console_blue_1.png",
      "assets/images/ps4_console_blue_2.png",
      "assets/images/ps4_console_blue_3.png",
      "assets/images/ps4_console_blue_4.png",
    ],
    price: 50000,
    nbStar: 4.5,
    nbLike: 20,
    isFavourite: true,
    isPopular: true,
    nbTotalProduct: 40, category: [Categories.jeux],
    storeId: stores[0].storeId,
  ),
  Product(
    productId: "11",
    name: "Nike Sport White - Man Pant",
    description: description,
    images: [
      "assets/images/Image Popular Product 2.png"
    ],
    price: 10000,
    nbStar: 4,
    nbLike: 0,
    isPopular: true,
    nbTotalProduct: 200, category: [Categories.sport],
    storeId: stores[1].storeId,
  ),
  Product(
    productId: "12",
    name: "Logitech Head",
    description: description,
    images: [
      "assets/images/wireless headset.png"
    ],
    price: 7500,
    nbStar: 4,
    nbLike: 31,
    nbTotalProduct: 75, category: [Categories.electronique],
    storeId: stores[2].storeId,
  ),
  Product(
    productId: "13",
    name: "Glove XC Omega - Polygon",
    description: description,
    images: [
      "assets/images/glap.png"
    ],
    price: 5000,
    nbStar: 3,
    nbLike: 14,
    nbTotalProduct: 30, category: [Categories.beaute],
    storeId: stores[0].storeId,
  ),
];