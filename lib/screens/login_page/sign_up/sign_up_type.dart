import 'package:flutter/material.dart';
import 'package:sugu/components/next_button.dart';
import 'package:sugu/constantes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sugu/screens/login_page/sign_up/sign_up_screen.dart';
import '../../../components/form_image.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const FormImage(imageUrl: "assets/images/Sign up-rafiki.png",),
              const Text("Comment voulez-vous vous inscrire ?", style: TextStyle(fontSize: 20, color: Colors.white),),
              const SizedBox(height: 20,),
              NextButton(
                  borderRadius: 5,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  elevation: 5,
                  press: (){
                    Navigator.pushNamed(context, SignUpScreen.routeName, arguments: LogType.phone);
                  },
                  color: Colors.green,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: const [
                      Text("Avec mon numéro", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white)),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.call, color: Colors.white,),
                        ),
                      ),
                    ],
                  )
              ),
              const SizedBox(height: 20,),
              NextButton(
                padding: const EdgeInsets.symmetric(vertical: 8),
                borderRadius: 5,
                elevation: 5,
                press: (){
                  Navigator.pushNamed(context, SignUpScreen.routeName, arguments: LogType.email);
                },
                color: const Color(0xFFD14A3E),//kSecondaryColor,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: const [
                    Text("Avec mon email", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white)),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.email, color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              NextButton(
                padding: const EdgeInsets.symmetric(vertical: 8),
                borderRadius: 5,
                elevation: 5,
                press: (){},
                color: Colors.white,//Color(0xFFD14A3E),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    const Text("Avec Google", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SvgPicture.asset("assets/icons/google-icon.svg", width: 24, height: 24,),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
