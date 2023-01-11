// Modèle pour le magasin

import 'package:sugu/models/product.dart';
import 'package:sugu/models/seller.dart';

import '../datas/categories.dart';

class Store {
  final String storeId; // l'id du magasin
  final String sellerId; // le vendeur
  final String name; // le nom du magasin
  final List<Categories> categories; // les categories du magasin
  final int size; // la taille du magasin, le nombre de produit maximal que le magasin peut contenir. Cela varie en fonction de l'abonnement du vendeur
  final int nbPostProduct;
  final int nbFollowers;

  Store({
    required this.storeId,
    required this.sellerId,
    required this.name,
    required this.categories,
    this.size = 5,
    required this.nbPostProduct,
    required this.nbFollowers,
  });

}