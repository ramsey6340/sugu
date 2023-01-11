import 'package:flutter/material.dart';
import 'package:sugu/models/store.dart';

import '../datas/categories.dart';

class Product{
  final String productId;
  final String storeId;
  final List<Categories> category;
  final String name; // le titre
  final String description; // la description
  final List<String> images; // les images
  final double nbStar; // le nombre d'étoile donné au produit
  final int nbLike; // le nombre de like donné au produit
  final double price; // le prix
  final bool isFavourite;
  final bool isPopular;
  final int nbTotalProduct;

  Product({
    required this.productId,
    required this.storeId,
    required this.nbTotalProduct,
    required this.name,
    required this.description,
    required this.images,
    required this.price,
    required this.category,
    this.nbStar = 0.0,
    this.nbLike = 0,
    this.isFavourite = false,
    this.isPopular = false,
    });
}
