// Modèle du vendeur

class Seller {
  String sellerId;
  String firstName;
  String lastName;
  String birthDay;
  String email;
  String numTel;
  String password;
  String country;
  String state;
  String city;
  List<String>? likedProductsList; // la liste des produits que le vendeur a aimé
  List<String>? followingStoresList; // la liste de magasins dont le vendeur s'est abonné
  List<String>? contactsList; // la liste des vendeur dont le vendeur courant a interagit ie à discuter
  List<String>? notificationsList; // liste des notifications, de la par des magasins, envoyé au vendeur
  bool isCurrentUser; // cet attribue sera supprimé à la fin du test

  Seller({
    required this.sellerId,
    required this.firstName,
    required this.lastName,
    required this.birthDay,
    required this.email,
    required this.numTel,
    required this.password,
    required this.country,
    required this.state,
    required this.city,

    this.likedProductsList,
    this.followingStoresList,
    this.contactsList,
    this.notificationsList,
    this.isCurrentUser=false,
  });

  // Constructeur nommé
  Seller.isEmpty({
    this.sellerId='',
    this.firstName='',
    this.lastName='',
    this.birthDay='',
    this.email='',
    this.numTel='',
    this.password='',
    this.country='',
    this.state='',
    this.city='',
    this.likedProductsList=const [],
    this.followingStoresList=const [],
    this.contactsList=const [],
    this.notificationsList=const [],
    this.isCurrentUser=false,
  });

  // setter
  set setSeller(Seller value) {
    sellerId = value.sellerId;
    firstName = value.firstName;
    lastName = value.lastName;
    birthDay = value.birthDay;
    email = value.email;
    numTel = value.numTel;
    password = value.password;
    country = value.country;
    state = value.state;
    city = value.city;
    likedProductsList = value.likedProductsList;
    followingStoresList = value.followingStoresList;
    contactsList = value.contactsList;
    notificationsList = value.notificationsList;
    isCurrentUser = value.isCurrentUser;
  }
}