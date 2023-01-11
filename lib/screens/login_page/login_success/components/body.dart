import 'package:flutter/material.dart';
import 'package:sugu/components/next_button.dart';
import 'package:sugu/size_config.dart';

import '../../home/home_screen.dart';

class Body extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: SizeConfig.screenHeight*0.04,),
        Image.asset('assets/images/success.png'),
        SizedBox(height: SizeConfig.screenHeight*0.04,),
        Text('Connexion réussie', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30),
              textAlign: TextAlign.center,
            ),
        SizedBox(height: SizeConfig.screenHeight*0.1,),
        NextButton(
            text: 'Continuer',
            press: (){
              Navigator.pushNamed(context, HomeScreen.routeName);
            }
        ),
      ],
    );
  }
}