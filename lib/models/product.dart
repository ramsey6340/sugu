import 'package:flutter/material.dart';

class Product{
  final String title; // le titre
  final String description; // la description
  final List<String> images; // les images
  final List<Color> colors; // les couleurs
  final double nb_star; // le nombre d'étoile donné au produit
  final double price; // le prix
  final bool is_favourite;
  final bool is_popular;

  Product({
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    required this.price,
    this.nb_star = 0.0,
    this.is_favourite = false,
    this.is_popular = false,
  });
}
