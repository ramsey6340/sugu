// Modèle du vendeur


class Seller {
  final String sellerId;
  final String firstName;
  final String lastName;
  final String birthDay;
  final bool isCurrentUser; // cet attribue sera supprimé à la fin du test

  Seller({
    required this.sellerId,
    required this.firstName,
    required this.lastName,
    required this.birthDay,
    this.isCurrentUser = false,
  });
}