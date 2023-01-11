import 'package:flutter/material.dart';
import 'package:sugu/components/next_button.dart';
import '../../../../constantes.dart';
import '../../../../size_config.dart';
import '../../login_success/login_success_screen.dart';


class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();

  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}){
    if(value.length == 1){
      focusNode.requestFocus();
    }
  }
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Les 4 cellules pour le formulaire OTP
          otp_input(),
          SizedBox(height: SizeConfig.screenHeight * 0.15,),
          // Le boutton "Continuer"
          NextButton(
              text: "Continuer",
              press: (){
                if(_formKey.currentState!.validate()){
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              }
          ),
        ],
      ),
    );
  }

  // Methode qui va retourner un Widget Row contenant les 4 champ de saisi pour les 4 valeurs de la vérification par OTP
  Widget otp_input(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // La cellule 1 parmit les 4 cellules
        SizedBox(
          width: getProportionateScreenWidth(60),
          child: TextFormField(
            autofocus: true,
            obscureText: true,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
            decoration: otpFieldDecoration, // la decoration du cellule
            onChanged: (value){
              nextField(value: value, focusNode: pin2FocusNode);
            },
          ),
        ),
        // La cellule 2 parmit les 4 cellules
        SizedBox(
          width: getProportionateScreenWidth(60),
          child: TextFormField(
            focusNode: pin2FocusNode,
            obscureText: true,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
            decoration: otpFieldDecoration, // la decoration du cellule
            onChanged: (value){nextField(value: value, focusNode: pin3FocusNode);},
          ),
        ),
        // La cellule 3 parmit les 4 cellules
        SizedBox(
          width: getProportionateScreenWidth(60),
          child: TextFormField(
            focusNode: pin3FocusNode,
            obscureText: true,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
            decoration: otpFieldDecoration, // la decoration du cellule
            onChanged: (value){nextField(value: value, focusNode: pin4FocusNode);},
          ),
        ),
        // La cellule 4 parmit les 4 cellules
        SizedBox(
          width: getProportionateScreenWidth(60),
          child: TextFormField(
            focusNode: pin4FocusNode,
            obscureText: true,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
            decoration: otpFieldDecoration, // la decoration du cellule
            onChanged: (value){pin4FocusNode.unfocus();},
          ),
        ),
      ],
    );
  }
}
