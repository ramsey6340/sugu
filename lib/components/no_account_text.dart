import 'package:flutter/material.dart';

import '../constantes.dart';
import '../screens/sign_up/sign_up_screen.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget
{
  NoAccountText({Key ? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('Vous n\'avez pas de compte?', style: TextStyle(fontSize: getProportionateScreenWidth(16))),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: Text('S\'inscrire', style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            color: kPrimaryColor,
          )
          ),
        ),
      ],
    );
  }
}