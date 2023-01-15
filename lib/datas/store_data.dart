// Exemple de magasin

import 'package:sugu/datas/categories.dart';
import 'package:sugu/datas/product_data.dart';
import 'package:sugu/datas/seller_data.dart';
import '../models/store.dart';


List<String> descriptions = [
  "Vous trouverez ici des tissus de toute les couleurs,"
      " de toute les qualité et venant de partout. N'hesitez pas à me contacté et ne soyez pas géneer par le prix, on est au Mali tout peut se discuter."
      "Je vous attend !",
  "Les chaussures, les pantallons, les chemises, les tshort, etc. Vous trouverez de tout dans ma boutique."
      "Que vous soyez jeune ou vieux, homme ou femme, SankShop est fait pour vous."
      "Nous vendons par details et par en gros. Il y'en a pour tous les prix et pour tous les qualités."
      "N'attendez plus, faite votre commande.",
  "Des naperrons pour les décoration de maison, des laines pour des habits à porté et bien plus. Lainy-Love Tissu est là pour vous."
      "Nous faisons des vêtements pour enfant en cotton, parfais pour les protégés en periode de fraaicheur tout en restant jolis et élegant."
      "Ne vous inquieter pas mes grandes soeurs, je ne vous est pas oublier, Lainy-Love Tissu est là pour tous les femmes."
      "Votre elegance est notre priorité."
];

List<Store> stores = [
  Store(
    storeId: "1",
    sellerId: sellers[0].sellerId,
    name: "Hassan Tissu",
    categories: [Categories.all, Categories.homme, Categories.vetement, Categories.chaussure,
      Categories.beaute, Categories.vieillard, Categories.enfant,
      Categories.accessoire, Categories.couture],
    nbFollowers: 10,
    nbPostProduct: 2,
    description: descriptions[0],
    address: "Daoudabougou",
    image: "assets/images/Profile Image.png",
    numTel1: '99235643',
    numTel2: '65342112',
    email: 'hassan65@gmail.com'
  ),
  Store(
    storeId: "2",
    sellerId: sellers[1].sellerId,
    name: "SankShop",
    categories: [Categories.all, Categories.homme, Categories.vetement, Categories.chaussure],
    nbFollowers: 20,
    nbPostProduct: 5,
    description: descriptions[1],
    address: "Kabala",
    image: "assets/images/chaussure2.png",
    numTel1: '71896753',
    email: 'madousankare88@gmail.com',
  ),
  Store(
    storeId: "3",
    sellerId: sellers[2].sellerId,
    name: "Lainy-Love Tissu",
    categories: [Categories.all, Categories.femme, Categories.enfant],
    nbFollowers: 30,
    nbPostProduct: 4,
    description: descriptions[2],
    address: "Att-bougou",
    image: "assets/images/chaussure3.jpg",
    numTel1: '44789090',
    numTel2: '785633210',
    email: 'kadidiatou66@gmail.com',
  ),
];