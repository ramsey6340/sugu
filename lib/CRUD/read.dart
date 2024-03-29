import 'package:sugu/datas/product_data.dart';

import '../datas/seller_data.dart';
import '../datas/store_data.dart';
import '../models/product.dart';
import '../models/store.dart';

class Read {

  // methode pour obtenir la boutique
  Store getStore({required String storeId}){
    late Store store;
    for(int i=0; i<stores.length; i++){
      if(stores[i].storeId == storeId){
        store = stores[i];
      }
    }
    return store;
  }

  // methode pour obtenir la boutique avec l'id du vendeur
  Store? getStoreWithSeller({required String sellerId}){
    Store? store;
    for(int i=0; i<stores.length; i++){
      if(stores[i].sellerId == sellerId){
        store = stores[i];
      }
    }
    return store;
  }

  // methode pour retourner la propriété "categoriesData" du produit
  Map<String, List<String>> categoriesData() {
    Map<String, List<String>> data = {};

    return data;
  }

  // methode pour obtenir le nombre de followers
  int? getNbFollowers({required String storeId}){
    int? nbFollowers = 0;
    for(int i=0; i<stores.length; i++){
      if(stores[i].storeId == storeId){
        //nbFollowers = stores[i].followerSellersList?.length;
        break;
      }
    }
    return nbFollowers;
  }
  
  // methode pour obtenir l'image du magasin (l'image du boutique est le même que l'image du vendeur)
  String getStoreImg({required String storeId}){
    String storeImg = '';
    for(int i=0; i<stores.length; i++){
      if(stores[i].storeId == storeId){
        storeImg = stores[i].image;
      }
    }
    return storeImg;
  }

  // methode pour obtenir le nom du boutique
  String getStoreName({required String storeId}){
    String storeName = '';
    for(int i=0; i<stores.length; i++){
      if(stores[i].storeId == storeId){
        storeName = stores[i].name;
        break;
      }
    }
    return storeName;
  }

  // methode pour obtenir le prenom et nom du vendeur avec l'id du vendeur
  String getSellerName({required String sellerId}){
    String sellerName = '';
    for(int i=0; i<sellers.length; i++){
      if(sellers[i].sellerId == sellerId){
        sellerName = '${sellers[i].firstName} ${sellers[i].lastName}';
        break;
      }
    }
    return sellerName;
  }

  // methode pour obtenir le prenom et nom du vendeur avec l'id du magasin
  String getSellerNameWithStore({required String storeId}){
    String sellerName = '';
    for(int i=0; i<sellers.length; i++){
      if(stores[i].storeId == storeId){
        sellerName = getSellerName(sellerId: stores[i].sellerId);
        break;
      }
    }
    return sellerName;
  }

  // methode pour obtenir l'attribue isCurrentUser en utilisan l'id de la boutique
  bool getIsCurrentUserWithStore({required String storeId}){
    bool isCurrentUser = false;
    for(int i=0; i<stores.length; i++){
      if(stores[i].storeId == storeId){
        isCurrentUser = getIsCurrentUser(sellerId: stores[i].sellerId);
        break;
      }
    }
    return isCurrentUser;
  }

  // methode pour obtenir l'attribue isCurrentUser
  bool getIsCurrentUser({required String sellerId}){
    bool isCurrentUser = false;
    for(int i=0; i<sellers.length; i++){
      if(sellers[i].sellerId == sellerId){
        isCurrentUser = sellers[i].isCurrentUser;
        break;
      }
    }
    return isCurrentUser;
  }

  // Liste des produits d'un vendeur
  List<Product> getAllProducts({required String storeId}) {
    List<Product> allProducts = [];
    for(int i=0; i<products.length; i++){
      if(products[i].storeId == storeId){
        allProducts.add(products[i]);
      }
    }

    return allProducts;
  }

  // obtenir l'attribue isPopular d'un magasin
  bool getIsStorePopular({required String storeId}) {
    bool isPopular = true;
    for(Store store in stores){
      if(store.storeId == storeId){
        isPopular = store.isPopular;
      }
    }
    return isPopular;
  }


  // obtenir l'attribue isPopular d'un magasin
  bool getIsProductPopular({required String productId}) {
    bool isPopular = true;
    for(Product product in products){
      if(product.productId == productId){
        isPopular = product.isPopular;
      }
    }
    return isPopular;
  }
}