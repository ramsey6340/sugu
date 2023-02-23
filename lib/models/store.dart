// Modèle pour le magasin

import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/phone_number.dart';


class Store {
  String storeId; // l'id du magasin
  String sellerId; // le vendeur
  String name; // le nom du magasin
  bool isOpen; // pour savoir si oui ou non le magasin est ouvert
  bool isUpToData; // pour savoir si oui ou non le magasin est à jour dans son payement mentuel.
  // S'il n'est pas à jour automatiquement le magasin sera fermé
  List<String> globalCat; // la liste des categories global du magasin
  int size; // la taille du magasin, le nombre de produit maximal que le magasin peut contenir.
  // Cela varie en fonction de l'abonnement du vendeur
  int nbPostProduct; // nombre de produit se trouvant dans le magasin actuellement
  bool isPopular; // un magasin est concideré comme populaire si son nombre d'abonnée
  // atteint un certain nombre
  String description; // description du magasin
  String morePrecision; // pour ajouter plus de precision de la par du vendeur
  // pour localiser sont magasin. Par exemple: "Près de la grande mosquée de Bamako",
  // "Près de l'hopital Gabriel Touré", etc.

  String image; // profile image du magasin
  PhoneNumber numTel1; // prémier numero de téléphone du magasin
  PhoneNumber? numTel2; // second numero de téléphone du magasin
  String? email; // email du magasin
  Country country; // pays du magasin
  String state; // région ou etat du magasin
  String city; // ville ou quartier du magasin
  String? geolocation; // géolocalisation par Map du magasin

  Store({
    required this.storeId,
    required this.sellerId,
    required this.name,
    required this.globalCat,
    required this.description,
    required this.nbPostProduct,
    required this.morePrecision,
    required this.image,
    required this.numTel1,
    required this.country,
    required this.state,
    required this.city,

    this.numTel2,
    this.email,
    this.isPopular=false,
    this.size = 5,
    this.isOpen=true,
    this.isUpToData=true,
    this.geolocation,
  });

  // Constructeur nommé
  Store.isEmpty({
    this.storeId='',
    this.sellerId='',
    this.name='',
    this.globalCat=const [],
    this.description='',
    this.nbPostProduct=0,
    this.morePrecision='',
    this.image='',
    this.numTel1=const PhoneNumber(countryISOCode: '', countryCode: '', number: ''),
    this.country=const Country(
        name: '',
        flag: '',
        code: '',
        dialCode: '',
        minLength: 0,
        maxLength: 0
    ),
    this.state='',
    this.city='',
    this.numTel2=const PhoneNumber(countryISOCode: '', countryCode: '', number: ''),
    this.email='',
    this.isPopular=false,
    this.size = 5,
    this.isOpen=true,
    this.isUpToData=true,
    this.geolocation='',
  });

  // setters
  set setStore(Store value) {
    storeId = value.storeId;
    sellerId = value.sellerId;
    name = value.name;
    isOpen = value.isOpen;
    isUpToData = value.isUpToData ;
    globalCat = value.globalCat;
    description = value.description;
    size = value.size;
    nbPostProduct = value.nbPostProduct;
    isPopular = value.isPopular;
    morePrecision = value.morePrecision;
    image = value.image;
    numTel1 = value.numTel1;
    numTel2 = value.numTel2;
    email = value.email;
    country = value.country;
    state = value.state;
    city = value.city;
    geolocation = value.geolocation;
  }

  set setGlobalCat(List<String> value) {
    globalCat = value;
  }
  set setName(String value) {
    name = value;
  }
  set setIsOpen(bool value) {
    isOpen = value;
  }
  set setIsUpToData(bool value) {
    isUpToData = value;
  }
  set setDescription(String value) {
    description = value;
  }
  set setSize(int value) {
    size = value;
  }
  set setNbPostProduct(int value) {
    nbPostProduct = value;
  }
  set setMorePrecision(String value) {
    morePrecision = value;
  }
  set setImage(String value) {
    image = value;
  }
  set setNumTel1(PhoneNumber value) {
    numTel1 = value;
  }
  set setNumTel2(PhoneNumber value) {
    numTel1 = value;
  }
  set setEmail(String value) {
    email = value;
  }
  set setCountry(Country value) {
    country = value;
  }
  set setState(String value) {
    state = value;
  }
  set setCity(String value) {
    city = value;
  }
  set setGeolocation(String value) {
    geolocation = value;
  }

}