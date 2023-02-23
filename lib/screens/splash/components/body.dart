import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../../components/next_button.dart';
import '../../login_page/sign_in/sign_in_screen.dart';
import '../sign_in_or_sign_up.dart';
import 'splash_content.dart';
class Body extends StatefulWidget{
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body>{
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "message": "Bienvenue sur Sugu\nFaisons des achats !",
      "image":"assets/images/splash_1.png"
    },
    {
      "message": "Nous aidons les gens à se connecter au magasin \npartout au Mali",
      "image":"assets/images/splash_2.png"
    },
    {
      "message": "Nous vous offrons des moyens facile pour faire des achats tout en restant chez vous",
      "image":"assets/images/splash_3.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value){
                    setState(() {
                      currentPage = value;
                    });
                  },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                      message: splashData[index]["message"]!,
                      image: splashData[index]["image"]!,
                    ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(splashData.length, (index) => buildDot(index:index)),
                    ),
                    Spacer(flex: 3),
                    NextButton(
                      borderRadius: 5,
                      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                      text: 'Continue',
                      press:(){
                        Navigator.pushNamedAndRemoveUntil(
                            context, SignInOrSignUp.routeName, (route) => false);
                      }
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }


  AnimatedContainer buildDot({required int index})
  {
    return AnimatedContainer(
      width: currentPage == index ? 20: 6,
      height: 6,
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 2),
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor: Color(0xFFD8D8D8),
        borderRadius:BorderRadius.circular(3),
      ),
    );
  }
}



