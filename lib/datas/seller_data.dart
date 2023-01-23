// Exemple de vendeur

import 'package:sugu/datas/product_data.dart';
import 'package:sugu/datas/store_data.dart';

import '../models/seller.dart';

List<Seller> sellers = [
  Seller(
    sellerId: "1",
    firstName: "Hassan",
    lastName: "Sidibé",
    birthDay: "02/09/1999",
    isCurrentUser: true,
    //likedProductsList: [products[1].productId,products[2].productId,],
    //followingStoresList: [stores[0].storeId,stores[1].storeId,stores[2].storeId,],
    //contactsList: [sellers[1].sellerId,sellers[2].sellerId,],
  ),
  Seller(
    sellerId: "2",
    firstName: "Mamadou",
    lastName: "Sankare",
    birthDay: "02/09/1999",
    //likedProductsList: [products[0].productId,products[2].productId,products[3].productId,],
    //followingStoresList: [stores[0].storeId,stores[1].storeId,],
    //contactsList: [sellers[2].sellerId,],
  ),
  Seller(
    sellerId: "3",
    firstName: "Kadiatou Aoua",
    lastName: "Traore",
    birthDay: "02/09/1996",
    //likedProductsList: [products[4].productId,products[6].productId,products[7].productId,],
    //followingStoresList: [stores[0].storeId,],
    //contactsList: [],
  ),
];