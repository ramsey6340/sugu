// Exemple de magasin

import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:sugu/datas/seller_data.dart';
import '../models/store.dart';
import 'global_category.dart';


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
    nbPostProduct: 2,
    isPopular: true,
    description: descriptions[0],
    morePrecision: "A côté du status de Soundjata",
    image: "assets/images/Profile Image.png",
    numTel1: const PhoneNumber(countryISOCode: 'ML', countryCode: '+223', number: '99657643'),
    numTel2: const PhoneNumber(countryISOCode: 'ML', countryCode: '+223', number: '65342112'),
    email: 'hassan65@gmail.com',
    globalCat: [
      GlobalCategory.maison,
      GlobalCategory.femme,
      GlobalCategory.enfant,
      GlobalCategory.vieillard
    ],
    country: const Country(
        name: 'Mali',
        code: 'ML',
        dialCode: '223',
        flag: '🇲🇱',
        maxLength: 8,
        minLength: 8
    ),
    state: 'Sikasso',
    city: 'Sikasso ville',
  ),
  Store(
    storeId: "2",
    sellerId: sellers[1].sellerId,
    name: "SankShop",
    nbPostProduct: 5,
    description: descriptions[1],
    morePrecision: "Près du super marché Hasard",
    image: "assets/images/chaussure2.png",
    numTel1: const PhoneNumber(countryISOCode: 'ML', countryCode: '+223', number: '71896753'),
    email: 'madousankare88@gmail.com',
    globalCat: [
      GlobalCategory.homme,
      GlobalCategory.maison,
      GlobalCategory.sport,
      GlobalCategory.femme
    ],
    country: const Country(
        name: 'Mali',
        code: 'ML',
        dialCode: '223',
        flag: '🇲🇱',
        maxLength: 8,
        minLength: 8
    ),
    state: 'Bamako',
    city: 'Daouda Bougou'
  ),
  Store(
    storeId: "3",
    sellerId: sellers[2].sellerId,
    name: "Lainy-Love Tissu",
    nbPostProduct: 4,
    isPopular: true,
    description: descriptions[2],
    morePrecision: "Près de la Mosqué 759",
    image: "assets/images/chaussure3.jpg",
    numTel1: const PhoneNumber(countryISOCode: 'ML', countryCode: '+223', number: '44789090'),
    numTel2: const PhoneNumber(countryISOCode: 'ML', countryCode: '+223', number: '785633210'),
    email: 'kadidiatou66@gmail.com',
    globalCat: [
      GlobalCategory.electronique,
      GlobalCategory.electricite,
      GlobalCategory.fille,
      GlobalCategory.garcon,
      GlobalCategory.jeux
    ],
    country: const Country(
        name: 'Mali',
        code: 'ML',
        dialCode: '223',
        flag: '🇲🇱',
        maxLength: 8,
        minLength: 8
    ),
    state: 'Bamako',
    city: 'Yirimadjo'
  ),
];