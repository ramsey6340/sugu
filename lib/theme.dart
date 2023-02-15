import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constantes.dart';

ThemeData theme()
{
  return ThemeData(
    scaffoldBackgroundColor: kBackground,//Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme()
{
  return const AppBarTheme(
    color: kAppBarColor,//Colors.white,
    elevation: 0,
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    iconTheme: IconThemeData(color: Colors.white),//IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
  );
}

TextTheme textTheme()
{
  return const TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor)
  );
}

InputDecorationTheme inputDecorationTheme()
{
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding:10,
  );

  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,//permet d'avoir "Email" ecrit sur la bordure et "Entrer votre email" à l'interieur
    contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),//pour le padding à l'interieur
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,//Pour avoir la même forme quand on clique sur le champ
    border: outlineInputBorder,
  );
}