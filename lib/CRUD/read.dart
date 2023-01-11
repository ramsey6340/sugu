import '../datas/seller_data.dart';
import '../datas/store_data.dart';

class Read {

  // methode pour obtenir le nombre de followers
  int getNbFollowers({required String storeId}){
    int nbFollowers = 0;
    for(int i=0; i<stores.length; i++){
      if(stores[i].storeId == storeId){
        nbFollowers = stores[i].nbFollowers;
        break;
      }
    }
    return nbFollowers;
  }
  
  // methode pour obtenir l'image du magasin (l'imaga du magasin est le même que l'image du vendeur)
  String getStoreImg({required String storeId}){
    String storeImg = '';
    for(int i=0; i<stores.length; i++){
      if(stores[i].storeId == storeId){
        storeImg = getSellerImg(sellerId: stores[i].sellerId);
      }
    }
    return storeImg;
  }

  // methode pour obtenir l'image du vendeur
  String getSellerImg({required String sellerId}){
    String sellerImg = '';
    for(int i=0; i<sellers.length; i++){
      if(sellers[i].sellerId == sellerId){
        sellerImg = sellers[i].image;
        break;
      }
    }
    return sellerImg;
  }

  // methode pour obtenir le nom du magasin
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

}