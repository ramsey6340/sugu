// Modèle pour le magasin

import '../datas/categories.dart';

class Store {
  final String storeId; // l'id du magasin
  final String sellerId; // le vendeur
  final String name; // le nom du magasin
  final List<Categories> categories; // les categories du magasin
  final int size; // la taille du magasin, le nombre de produit maximal que le magasin peut contenir. Cela varie en fonction de l'abonnement du vendeur
  final int nbPostProduct;
  final int nbFollowers;
  final String description;
  final String address;
  final String image;
  final String numTel1;
  final String? numTel2;
  final String? email;
  final String? geolocation;

  Store({
    required this.storeId,
    required this.sellerId,
    required this.name,
    required this.categories,
    required this.description,
    this.size = 5,
    required this.nbPostProduct,
    required this.nbFollowers,
    required this.address,
    required this.image,
    required this.numTel1,
    this.numTel2,
    this.email,
    this.geolocation,
  });

}