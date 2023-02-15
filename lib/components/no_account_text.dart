import 'package:flutter/material.dart';
import '../constantes.dart';
import '../screens/login_page/sign_up/sign_up_screen.dart';
import '../screens/login_page/sign_up/sign_up_type.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget
{
  const NoAccountText({Key ? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.pushNamedAndRemoveUntil(context, SignUpType.routeName, (route) => false);
          },
          child: Text('S\'inscrire', style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.blue,
            decoration: TextDecoration.underline
          )
          ),
        ),
      ],
    );
  }
}