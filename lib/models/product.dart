import '../datas/sub_categories.dart';


class Product {
  final String productId;
  final String storeId;
  final Map<String, List<String>>? categoriesData;
  final List<Categories> categories; //doit être supprimé pour donner la place à globalCat et subcat
  final String name; // le titre
  final String description; // la description
  final List<String> images; // les images
  final int nbLike; // le nombre de like donné au produit
  final int minPrice; // le prix minimal
  final int maxPrice; // le prix maximal
  final bool isPopular; // un produit est populaire lorsque le nombre de like atteint un certain nombre.
  // La popularité est répresenté par un étoile

  Product({
    required this.productId,
    required this.storeId,
    required this.name,
    required this.description,
    required this.images,
    required this.minPrice,
    required this.maxPrice,
    this.categoriesData,
    required this.categories,
    this.nbLike = 0,
    this.isPopular = false,
  });

}
