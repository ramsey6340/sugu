import 'package:flutter/material.dart';

import '../constantes.dart';
import '../size_config.dart';

class NextButton extends StatelessWidget{
  NextButton({Key ? key, required this.text, required this.press}):super(key: key);
  final String text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(300),
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kPrimaryColor,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
        onPressed: press  as void Function()?,
        child: Text(text),
      ),
    );
  }
}