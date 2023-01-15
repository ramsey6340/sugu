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

}