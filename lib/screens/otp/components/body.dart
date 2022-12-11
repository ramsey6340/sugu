import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'package:sugu/size_config.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18)),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Vérification OTP", style: headingStyle,),
              Text("Nous avons envoyé un code au +223 72 19 ***", style: subHeadingStyle,textAlign: TextAlign.center),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ce code expirera dans ...", style: subHeadingStyle,),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 30.0, end: 0.0),
                    duration: Duration(seconds: 30),
                    builder: (context, value, child) => Text("00:${value}", style: TextStyle(color: kPrimaryColor),),
                    onEnd: (){},
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              OTPForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1,),
              GestureDetector(
                onTap: (){print("Coucou");},
                child: Text(
                  "Renvoyer le code OTP",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
