// Exemple de magasin

import 'package:sugu/datas/categories.dart';
import 'package:sugu/datas/product_data.dart';
import 'package:sugu/datas/seller_data.dart';
import '../models/store.dart';


List<Store> stores = [
  Store(
    storeId: "1",
    sellerId: sellers[0].sellerId,
    name: "Hassan Tissu",
    categories: [Categories.homme, Categories.vetement],
    nbFollowers: 10,
    nbPostProduct: 2,
  ),
  Store(
    storeId: "2",
    sellerId: sellers[1].sellerId,
    name: "SankShop",
    categories: [Categories.homme, Categories.vetement, Categories.chaussure],
    nbFollowers: 20,
    nbPostProduct: 5,
  ),
  Store(
    storeId: "3",
    sellerId: sellers[2].sellerId,
    name: "Lainy-Love Tissu",
    categories: [Categories.femme, Categories.enfant],
    nbFollowers: 30,
    nbPostProduct: 4,
  ),
];