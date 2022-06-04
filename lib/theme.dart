import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constantes.dart';

ThemeData theme()
{
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme()
{
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    iconTheme:IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Color(0xFF8B8B8B), fontSize: 20,
    ),
  );
}

TextTheme textTheme()
{
  return TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor)
  );
}

InputDecorationTheme inputDecorationTheme()
{
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding:10,
  );

  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,//permet d'avoir "Email" ecrit sur la bordure et "Entrer votre email" à l'interieur
    contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),//pour le padding à l'interieur
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,//Pour avoir la même forme quand on clique sur le champ
    border: outlineInputBorder,
  );
}