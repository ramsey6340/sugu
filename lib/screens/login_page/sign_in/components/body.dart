import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sugu/components/phone_form_field_custom.dart';
import 'package:sugu/components/text_form_field_custom.dart';
import 'package:sugu/screens/login_page/sign_in/components/sign_in_form.dart';
import 'package:sugu/size_config.dart';
import '../../../../components/no_account_text.dart';
import '../../../../components/social_card.dart';
import '../../../../constantes.dart';


class Body extends StatelessWidget{
  const Body({Key? key, required this.logType}) : super(key: key);
  final LogType logType;

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
                children: [
                  (logType == LogType.phone)?Image.asset(
                    "assets/images/Mobile login-bro.png",
                    width: getProportionateScreenWidth(320),
                    height: getProportionateScreenHeight(320),
                  ):
                  Image.asset(
                    "assets/images/Computer login-rafiki.png",
                    width: getProportionateScreenWidth(320),
                    height: getProportionateScreenHeight(320),
                  ),
                  SizedBox(height: getProportionateScreenHeight(10),),
                  SignInForm(logType: logType,),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  const NoAccountText(),
                  SizedBox(height: getProportionateScreenHeight(40),),
                ],
              ),
            ),
          ),
        ),
    );
  }
}




