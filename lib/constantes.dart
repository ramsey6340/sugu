import 'package:flutter/material.dart';
import 'package:sugu/size_config.dart';

const kPrimaryColor = Colors.deepPurple;//Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

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

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Entrer votre email";
const String kInvalidEmailError = "Entrer un email valide";
const String kPassNullError = "Entrer votre mot de passe";
const String kShortPassError = "Le mot de passe est trop court";
const String kMatchPassError = "Mot de passe incorrecte";
const String KPassConfirmError = "Les mots de passes ne correspondent pas";