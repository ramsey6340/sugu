import 'package:flutter/material.dart';
import 'profile_additional_info.dart';
import '../../../../constantes.dart';
import '../../../../size_config.dart';


class SignUpAdditionalInfo extends StatelessWidget {
  static String routeName = 'sign_up_additional_info';
  const SignUpAdditionalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text("Inscription"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(18)
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text("Dite nous en plus sur vous", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(height: getProportionateScreenHeight(50),),
                ProfileAdditionalInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
