// Modèle du vendeur


class Seller {
  final String sellerId;
  final String firstName;
  final String lastName;
  final String birthDay;
  final List<String>? likedProductsList; // la liste des produits que le vendeur a aimé
  final List<String>? followingStoresList; // la liste de magasins dont le vendeur s'est abonné
  final List<String>? contactsList; // la liste des vendeur dont le vendeur courant a interagit ie à discuter
  final List<String>? notificationsList; // liste des notifications, de la par des magasins, envoyé au vendeur
  final bool isCurrentUser; // cet attribue sera supprimé à la fin du test

  Seller({
    required this.sellerId,
    required this.firstName,
    required this.lastName,
    required this.birthDay,
    this.likedProductsList,
    this.followingStoresList,
    this.contactsList,
    this.notificationsList,
    this.isCurrentUser = false,
  });
}