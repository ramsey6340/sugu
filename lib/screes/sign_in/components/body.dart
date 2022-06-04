import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sugu/constantes.dart';
import 'package:sugu/screes/sign_in/components/sign_form.dart';
import 'package:sugu/size_config.dart';

import '../../../components/Next_button.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../components/form_error.dart';
import '../../../components/no_account_text.dart';
import '../../../components/social_card.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(18)
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text("Bienvenue !", style: TextStyle(
                      color: Colors.black54,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "connectez-vous avec votre email et votre mot de passe\nou continuez avec les réseaux sociaux",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight*0.05,),
                  SignForm(),
                  SizedBox(height: SizeConfig.screenHeight*0.05,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocialCard(
                          icon: 'assets/icons/google-icon.svg',
                          press: (){}
                      ),
                      SocialCard(
                          icon: 'assets/icons/facebook-2.svg',
                          press: (){}
                      ),
                      SocialCard(
                          icon: 'assets/icons/twitter.svg',
                          press: (){}
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(10),),
                  NoAccountText(),
                ],
              ),
            ),
          ),
        ),
    );
  }
}




