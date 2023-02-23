import 'package:flutter/material.dart';
import 'package:sugu/size_config.dart';

const kAppBarColor = Color(0xFF1D334A);
const Color kRoundedCategoryColor = Color(0xFFFFA51E);
const kPrimaryColor = Color(0xFF1D334A);//Colors.deepPurple;//Color(0xFFFF7643);
const kSecondaryColor = Colors.deepPurple;
const kButtonRoundedColor = Colors.black54;
const kBackground = Color(0xFFFCFCFC);
const Color kGreyColor = Color(0xffF3F3F3);
Color kPopupMenuColor = Colors.black.withOpacity(0.8);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kThirdColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kFourColor = Color(0xFFF5F6F9);
const kTextFieldOpacity = 0.7;
const kAnimationDuration = Duration(milliseconds: 200);

TextStyle priceStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: kRoundedCategoryColor);
double buttonWidth = getProportionateScreenWidth(300);
double buttonHeight = getProportionateScreenHeight(70);
const int kPasswordMaxLength = 4;
const int kFirstNameMinLength = 2;
const int kLastNameMinLength = 2;
const int maxLengthOfExampleProduct = 12;
// les différents type de notification
enum NotificationType {
  info,
  promotion,
  abonnement,
}
// les différents type d'inscription
enum LogType {
  phone,
  email,
  google,
}

// Type de formulaire pour la création du magagin
enum StoreFormType {
  profile,
  contact,
  location
}

// les messages à afficher en cas de fermeture du magasin
const String noStoreMessage = "Vous n'avez pas de boutique encore ouverte."
    "\nCliquez sur « Ouvrir » pour ouvrir votre boutique";
const String expiredSubscriptionMessage = "Vôtre boutique est fermé pour rétard de payment "
    "dans vôtre abonnement.\nCliquer sur « Ouvrir » pour vous mettre à jour.";
const String autoClosingStore = "Vous avez fermé vôtre boutique.\nCliquer sur « Ouvrir » pour l'ouvrir à nouveau.";

// Typesd'inaccessibilité pour acceder à sa boutique
enum TypeUnavalableStore {
  noStoreExist,
  expiredSubscription,
  autoClosingStore
}

// Style pour l'en-tête des pages de login
final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Style appliqué lorsqu'on choisi une catégorie d'affichage dans la page Favoris par exemple
const textChoosed = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 18,
  decoration: TextDecoration.underline,
  decorationThickness: 2,
);
// Style appliqué lorsqu'on a pas choisi une catégorie d'affichage dans la page Favoris par exemple
const textNotchoosed = TextStyle(fontSize: 18);


// Style pour les texte sous l'en-tête des pages de login
final subHeadingStyle = TextStyle(fontSize: 18);

// Decoration correspondant à chaque cellule du formulaire OTP

final otpFieldDecoration = InputDecoration(
  border: OutlineInputBorder(),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(25)),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor)
  ),
);

// Decoration correspondant à la barre de recherche
final searchBarDecoration = InputDecoration(
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    hintText: "Rechercher",
    prefixIcon: Icon(Icons.search, color: Colors.black54,),
    contentPadding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(10),
        horizontal: getProportionateScreenWidth(20)
    )
);


final RegExp birthDayRegExp = RegExp(r"^[0-9]{2}\/[0-9]{2}\/[0-9]{4}");

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Entrer votre email";
const String kInvalidEmailError = "Entrer un email valide";
const String kPassNullError = "Entrer votre mot de passe";
const String kShortPassError = "Le mot de passe est trop court";
const String kMatchPassError = "Mot de passe incorrecte";
const String KPassConfirmError = "Les mots de passes ne correspondent pas";