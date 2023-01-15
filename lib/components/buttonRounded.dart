import 'package:flutter/material.dart';


class ButtonRounded extends StatelessWidget {
  const ButtonRounded({Key? key,  required this.press, required this.text, this.textColor = Colors.black, this.backgroundColor = Colors.white, this.isBorder = true}) : super(key: key);

  final Function press;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final bool isBorder;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press as void Function(),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent), // pour enlever l'effet de teinte de couleur blue quand on clique sur le bouton
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: (isBorder)? Colors.black: Colors.transparent), // pour créer une bordure exterieur
          ),
        )
      ),
      child: Text(text, style: TextStyle(color: textColor),),
    );
  }
}