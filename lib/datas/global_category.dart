// les categories global
import 'package:sugu/datas/sub_categories.dart';

class GlobalCategory {
  static const String homme = "Homme";
  static const String femme = "Femme";
  static const String garcon = "Garcon";
  static const String fille = "Fille";
  static const String enfant = "Enfant";
  static const String vieillard = "Vieillard";
  static const String maison = "Maison";
  static const String voiture = "Voiture";
  static const String electronique = "Electronique";
  static const String jeux = "Jeux";
  static const String artisant = "Artisant";
  static const String sport = "Sport";
  static const String education = "Education";
  static const String beaute = "Beaute";
  static const String nourriture = "Nourriture";
  static const String restaurant = "Restaurant";
  static const String animaux = "Animaux";
  static const String service = "Service";
  static const String plomberie = "Plomberie";
  static const String electricite = "Electricité";
  static const String decoration = "Décoration";

}

// les sous categories
class SubCategories {
  static const String tout = "Tout";

  static const String camions = "Camions";
  static const String telephone = "Téléphones";
  static const String ordinateurs = "Oridinateurs";
  static const String tracteurs = "Tracteurs";
  static const String bulldozers = "Bulldozers";
  static const String vetements = "Vêtements";
  static const String chaussures = "Chaussures";
  static const String accessoires = "Accessoires";
  static const String sacs = "Sacs";
  static const String montres = "Montres";
  static const String bijoux = "Bijoux";
  static const String pomades = "Pomades";
  static const String piecesMecanique = "Pièce mecanique";
  static const String meubles = "Meubles";
  static const String patisseries = "Pâtisserie";
  static const String decorations = "Décoration";
  static const String electroniques = "Electronique";
  static const String playStations = "Play Stations";
  static const String plomberies = "Plomberie";
  static const String electricites = "Electricité";
  static const String materielsElevage = "Matériesl d'élevage";
  static const String nourritures = "Nourritures";
  static const String maison = "Maison";
  static const String medicaments = "Médicaments";
  static const String materielsConstruction = "Matériel de construction";
}


// les catégories global avec leur sous categories associé
Map<String, List<String>> categoriesData = {

  GlobalCategory.homme: listHomme,
  GlobalCategory.femme: listFemme,
  GlobalCategory.garcon: listGarcon,
  GlobalCategory.fille: listFille,
  GlobalCategory.enfant: listEnfant,
  GlobalCategory.vieillard: listVieillard,
  GlobalCategory.maison: listMaison,
  GlobalCategory.voiture: listVoiture,
  GlobalCategory.electronique: listElectronique,
  GlobalCategory.jeux: listJeux,
  GlobalCategory.artisant: listArtisant,
  GlobalCategory.sport: listSport,
  GlobalCategory.education: listEducation,
  GlobalCategory.beaute: listBeaute,
  GlobalCategory.nourriture: listNourriture,
  GlobalCategory.restaurant: listRestaurant,
  GlobalCategory.animaux: listAnimaux,
  GlobalCategory.service: listService,
  GlobalCategory.plomberie: listPlomberie,
  GlobalCategory.electricite: listElectricite,
  GlobalCategory.decoration: listDecoration,

};

// les categories global avec leur image associer
Map<String, String> categoriesImage = {
  GlobalCategory.homme: 'assets/images/Image Popular Product 1.png',
  GlobalCategory.femme: 'assets/images/glap.png',
  GlobalCategory.garcon: 'assets/images/Image Popular Product 1.png',
  GlobalCategory.fille: 'assets/images/Image Popular Product 1.png',
  GlobalCategory.enfant: 'assets/images/glap.png',
  GlobalCategory.vieillard: 'assets/images/Image Popular Product 1.png',
  GlobalCategory.maison: 'assets/images/tshirt.png',
  GlobalCategory.voiture: 'assets/images/tshirt.png',
  GlobalCategory.electronique: 'assets/images/tshirt.png',
  GlobalCategory.jeux: 'assets/images/tshirt.png',
  GlobalCategory.artisant: 'assets/images/glap.png',
  GlobalCategory.sport: 'assets/images/tshirt.png',
  GlobalCategory.education: 'assets/images/tshirt.png',
  GlobalCategory.beaute: 'assets/images/wireless headset.png',
  GlobalCategory.nourriture: 'assets/images/glap.png',
  GlobalCategory.restaurant: 'assets/images/wireless headset.png',
  GlobalCategory.animaux: 'assets/images/wireless headset.png',
  GlobalCategory.service: 'assets/images/glap.png',
  GlobalCategory.plomberie: 'assets/images/wireless headset.png',
  GlobalCategory.electricite: 'assets/images/wireless headset.png',
  GlobalCategory.decoration: 'assets/images/wireless headset.png',
};

void main() {
  print(categoriesData[categoriesData.keys.toList()[0]]);
}
