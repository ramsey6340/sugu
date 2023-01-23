// Exemple de produit

import 'package:flutter/material.dart';
import 'package:sugu/datas/store_data.dart';
import '../models/product.dart';
import '../datas/sub_categories.dart';


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
    minPrice: 20000,
    maxPrice: 50000,
    nbLike: 21,
    isPopular: true,
    categories: [Categories.chaussure, Categories.homme],
    storeId: stores[0].storeId,
  ),
  Product(
    productId: "2",
    name: "Chaussure 3",
    description: description,
    images: [
      "assets/images/chaussure3.jpg"
    ],
    minPrice: 5000,
    maxPrice: 75000,
    nbLike: 10,
    isPopular: true,
    categories: [Categories.chaussure, Categories.homme],
    storeId: stores[1].storeId,
  ),
  Product(
    productId: "3",
    name: "Foulard 1",
    description: description,
    images: [
      "assets/images/foulard1.jpg"
    ],
    minPrice: 750,
    maxPrice: 1000,
    nbLike: 100,
    isPopular: true,
    categories: [Categories.beaute, Categories.femme],
    storeId: stores[2].storeId,
  ),
  Product(
    productId: "4",
    name: "Foulard 2",
    description: description,
    images: [
      "assets/images/foulard2.jpg"
    ],
    minPrice: 1000,
    maxPrice: 2000,
    nbLike: 60,
    isPopular: true,
    categories: [Categories.beaute, Categories.femme],
    storeId: stores[0].storeId,
  ),
  Product(
    productId: "5",
    name: "Montre 1",
    description: description,
    images: [
      "assets/images/montre1.jpg"
    ],
    minPrice: 3000,
    maxPrice: 5000,
    nbLike: 5,
    isPopular: true,
    categories: [Categories.homme, Categories.accessoire],
    storeId: stores[1].storeId,
  ),
  Product(
    productId: "6",
    name: "Montre 4",
    description: description,
    images: [
      "assets/images/montre4.jpeg"
    ],
    minPrice: 2000,
    maxPrice: 2500,
    nbLike: 20,
    isPopular: true,
    categories: [Categories.homme, Categories.accessoire],
    storeId: stores[2].storeId,
  ),
  Product(
    productId: "7",
    name: "Pantallon Homme",
    description: description,
    images: [
      "assets/images/pant1.jpg"
    ],
    minPrice: 5000,
    maxPrice: 5000,
    nbLike: 34,
    isPopular: true,
    categories: [Categories.vetement, Categories.homme],
    storeId: stores[0].storeId,
  ),
  Product(
    productId: "8",
    name: "PC 1",
    description: description,
    images: [
      "assets/images/pc1.jpg"
    ],
    minPrice: 100000,
    maxPrice: 100000,
    nbLike: 30,
    isPopular: true,
    categories: [Categories.electronique],
    storeId: stores[1].storeId,
  ),
  Product(
    productId: "9",
    name: "PC 2",
    description: description,
    images: [
      "assets/images/pc2.jpg"
    ],
    minPrice: 250000,
    maxPrice: 300000,
    nbLike: 56,
    isPopular: true,
    categories: [Categories.electronique],
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
    minPrice: 25000,
    maxPrice: 50000,
    nbLike: 20,
    isPopular: true,
    categories: [Categories.jeux],
    storeId: stores[0].storeId,
  ),
  Product(
    productId: "11",
    name: "Nike Sport White - Man Pant",
    description: description,
    images: [
      "assets/images/Image Popular Product 2.png"
    ],
    minPrice: 10000,
    maxPrice: 10000,
    nbLike: 0,
    isPopular: true,
    categories: [Categories.sport],
    storeId: stores[1].storeId,
  ),
  Product(
    productId: "12",
    name: "Logitech Head",
    description: description,
    images: [
      "assets/images/wireless headset.png"
    ],
    minPrice: 7000,
    maxPrice: 7500,
    nbLike: 31,
    categories: [Categories.electronique],
    storeId: stores[2].storeId,
  ),
  Product(
    productId: "13",
    name: "Glove XC Omega - Polygon",
    description: description,
    images: [
      "assets/images/glap.png"
    ],
    minPrice: 4000,
    maxPrice: 5000,
    nbLike: 14,
    categories: [Categories.beaute],
    storeId: stores[0].storeId,
  ),
];