import 'package:flutter/material.dart';
import '../../../../components/with_account_text.dart';
import '../../../../constantes.dart';
import '../../../../size_config.dart';
import 'sign_up_form.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.logType}) : super(key: key);
  final LogType logType;
//SignUpForm()
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
                SignUpForm(logType: logType,),
                SizedBox(height: getProportionateScreenHeight(20),),
                const WithAccountText(),
                SizedBox(height: getProportionateScreenHeight(40),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
