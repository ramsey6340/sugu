import 'package:flutter/material.dart';
import '../screens/login_page/sign_in/sign_in_type.dart';
import '../size_config.dart';

class WithAccountText extends StatelessWidget
{
  const WithAccountText({Key ? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.pushNamedAndRemoveUntil(context, SignInType.routeName, (route) => false);
          },
          child: Text('Se connecté', style: TextStyle(
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