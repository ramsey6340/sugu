import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sugu/screens/login_page/sign_in/components/sign_in_form.dart';
import 'package:sugu/size_config.dart';
import '../../../../components/form_image.dart';
import '../../../../components/no_account_text.dart';
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
                  (logType == LogType.phone)?
                  const FormImage(
                    imageUrl: "assets/images/Mobile login-bro.png",
                  ) :
                  const FormImage(
                    imageUrl: "assets/images/Computer login-rafiki.png",
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




