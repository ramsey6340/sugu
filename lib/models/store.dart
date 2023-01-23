// Modèle pour le magasin

import '../datas/global_category.dart';
import '../datas/sub_categories.dart';

class Store {
  final String storeId; // l'id du magasin
  final String sellerId; // le vendeur
  final String name; // le nom du magasin
  final List<Categories> categories; // elle doit être supprimé pour laisser la place à globalCat et subCat
  final List<GlobalCategory>? globalCat; // la liste des categories global du magasin
  //final List<String>? followerSellersList; // liste des vendeurs qui se sont abonné au magasin
  // cette valeur risque de générer une boucle avec l'attribut followingStoresList du model seller
  // si ce cas arrive il faudra supprimer l'un des 2 attributs

  final int size; // la taille du magasin, le nombre de produit maximal que le magasin peut contenir. Cela varie en fonction de l'abonnement du vendeur
  final int nbPostProduct;
  final bool isPopular; // un magasin est concideré comme populaire si son nombre d'abonnée atteint un certain nombre
  //final int nbFollowers;
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
    this.globalCat,
    //this.followerSellersList,
    required this.description,
    this.size = 5,
    required this.nbPostProduct,
    this.isPopular=false,
    //required this.nbFollowers,
    required this.address,
    required this.image,
    required this.numTel1,
    this.numTel2,
    this.email,
    this.geolocation,
  });

}