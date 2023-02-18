import 'package:flutter/material.dart';
import 'package:sugu/components/next_button.dart';
import 'package:sugu/constantes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sugu/screens/login_page/sign_up/sign_up_screen.dart';

import '../../../components/form_image.dart';
import '../../../size_config.dart';
import '../../splash/sign_in_or_sign_up.dart';


class SignUpType extends StatelessWidget {
  static String routeName = 'sign_up_type';
  const SignUpType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBarColor,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pushNamedAndRemoveUntil(context, SignInOrSignUp.routeName, (route) => false);},),
        title: const Text("Inscription"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            FormImage(imageUrl: "assets/images/Sign up-rafiki.png",),
            //Image.asset("assets/images/Sign up-rafiki.png", width: getProportionateScreenWidth(320), height: getProportionateScreenHeight(320),),
            const Text("Comment voulez-vous vous inscrire ?", style: TextStyle(fontSize: 20, color: Colors.white),),
            const SizedBox(height: 20,),
            NextButton(
              elevation: 5,
              press: (){
                Navigator.pushNamed(context, SignUpScreen.routeName, arguments: LogType.phone);
              },
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(50),
                      child: const Icon(Icons.call, color: Colors.white,)),
                  SizedBox(
                    width: getProportionateScreenWidth(200),
                      child: const Center(child: Text("Avec mon numéro", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20,),)))
                ],
              ),
            ),
            const SizedBox(height: 20,),
            NextButton(
              elevation: 5,
              press: (){
                Navigator.pushNamed(context, SignUpScreen.routeName, arguments: LogType.email);
              },
              color: const Color(0xFFD14A3E),//kSecondaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(50),
                      child: const Icon(Icons.email, color: Colors.white,)),
                  SizedBox(
                    width: getProportionateScreenWidth(200),
                      child: const Center(child: Text("Avec mon email", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),)))
                ],
              ),
            ),
            const SizedBox(height: 20,),
            NextButton(
              elevation: 5,
              press: (){
               // Navigator.pushNamed(context, SignUpScreen.routeName, arguments: LogType.google);
              },
              color: Colors.white,//Color(0xFFD14A3E),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(50),
                      child: SvgPicture.asset("assets/icons/google-icon.svg", width: 30, height: 30,)),
                  SizedBox(
                    width: getProportionateScreenWidth(200),
                      child: const Center(child: Text("Avec Google", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black87),)))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
