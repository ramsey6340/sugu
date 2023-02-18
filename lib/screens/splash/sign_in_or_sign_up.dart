import 'package:flutter/material.dart';
import 'package:sugu/components/next_button.dart';
import 'package:sugu/constantes.dart';
import '../../components/form_image.dart';
import '../../size_config.dart';
import '../login_page/sign_in/sign_in_type.dart';
import '../login_page/sign_in/sign_in_screen.dart';
import '../login_page/sign_up/sign_up_screen.dart';
import '../login_page/sign_up/sign_up_type.dart';


class SignInOrSignUp extends StatelessWidget {
  static String routeName = 'sign_in_or_sign_up';
  const SignInOrSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBarColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const FormImage(imageUrl: 'assets/images/show_products_orange.png',),
              //Image.asset('assets/images/show_products_orange.png', width: getProportionateScreenWidth(320), height: getProportionateScreenHeight(320),),
              const SizedBox(height: 10,),
              const Text.rich(
                TextSpan(text: "Aw bissimila ",style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                children: [
                  TextSpan(text: "Sugu ",
                      children: [TextSpan(text: "kan", style: TextStyle(color: Colors.white))],
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: kRoundedCategoryColor))
                ])
              ),
              const SizedBox(height: 10,),
              const Text("Un espace où vous pouvez faire connaitre vos produits à de nouveau client potentiel partout dans le pays sans quitter chez-vous", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white), textAlign: TextAlign.center,),
              const SizedBox(height: 50,),
              NextButton(
                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                text: "Se connecté",
                press: (){
                  Navigator.pushNamed(context, SignInType.routeName);
                },
                color: kRoundedCategoryColor,
              ),
              const SizedBox(height: 30,),
              NextButton(
                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                text: "S'inscrire",
                press: (){
                  Navigator.pushNamed(context, SignUpType.routeName);
                },
                color: kSecondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
