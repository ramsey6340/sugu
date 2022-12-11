import 'package:flutter/material.dart';

import '../../../constantes.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget{
  SplashContent({Key? key, required this.message, required this.image}):super(key: key);
  String message, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text('SUGU', style: TextStyle(
          fontSize: getProportionateScreenWidth(36),
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
        ),
        Text(message,textAlign: TextAlign.center,),
        Spacer(),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265 ),
          width: getProportionateScreenWidth(235),
        ),

      ],
    );
  }
}