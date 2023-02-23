import 'package:flutter/material.dart';
import '../../../../components/Next_button.dart';
import '../../../../components/custom_suffix_icon.dart';
import '../../../../components/form_error.dart';
import '../../../../components/phone_form_field_custom.dart';
import '../../../../components/text_form_field_custom.dart';
import '../../../../constantes.dart';
import '../../../../size_config.dart';
import '../../../main_screen.dart';
import '../../forgot_password/forgot_password_screen.dart';


class SignInForm extends StatefulWidget{
  const SignInForm({Key? key, required this.logType}) : super(key: key);
  final LogType logType;

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm>{
  final _formKey = GlobalKey<FormState>();

  String? passwordError = '';
  String? emailError = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          (widget.logType == LogType.phone)?PhoneFormFieldCustom(
            hintText: 'numéro de téléphone',
            fillColor: Colors.grey,
            focusBorderSideColor: Colors.transparent,
            borderSideColor: Colors.transparent,
            hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
            cursorColor: kRoundedCategoryColor,
            inputTextColor: Colors.white,
          ):
          TextFormFieldCustom(
            textInputType: TextInputType.emailAddress,
            hintText: 'email',
            fillColor: Colors.grey,
            focusBorderSideColor: Colors.transparent,
            borderSideColor: Colors.transparent,
            hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
            cursorColor: kRoundedCategoryColor,
            suffixColor: Colors.black54,
            inputTextColor: Colors.white,
            errorText: emailError,
            // la méthode validator
            validator: (value){
              if(!emailValidatorRegExp.hasMatch(value!)){
               setState(() {
                 emailError = 'Email incorrecte';
               });
               return emailError;
              }
              return null;
            },
            // la méthode onChanged
            onChanged: (value) {
              if(value.isEmpty){
                setState(() {
                  emailError = '';
                });
              }
              else if(value.isNotEmpty && !emailValidatorRegExp.hasMatch(value)){
                setState(() {
                  emailError = '';
                });
              }
            },
          ),
          TextFormFieldCustom(
            isPassword: true,
            hintText: 'Mot de passe',
            fillColor: Colors.grey,
            focusBorderSideColor: Colors.transparent,
            borderSideColor: Colors.transparent,
            hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
            cursorColor: kRoundedCategoryColor,
            suffixColor: Colors.black54,
            inputTextColor: Colors.white,
            errorText: passwordError,
            // la méthode validator
            validator: (value){
              if(value!.isEmpty){
                setState(() {
                  passwordError = "Entrer le mot de passe";
                });
                return passwordError;
              }
              else if(value.isNotEmpty && value.length<kPasswordMaxLength){
                setState(() {
                  passwordError = "Mot de passe incorrecte";
                });
                return passwordError;
              }
              else{
                return null;
              }
            },
            // la méthode onChanged
            onChanged: (value) {
              if(value.isEmpty){
                setState(() {
                  passwordError = '';
                });
              }
              else if(value.isNotEmpty && value.length<kPasswordMaxLength){
                setState(() {
                  passwordError = '';
                });
              }
              else if(value.isNotEmpty && value.length>=kPasswordMaxLength){
                setState(() {
                  passwordError = '';
                });
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
                child: const Text(
                  'j\'ai oublié mon mot de passe',
                  style: TextStyle(color: Colors.white, decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(30)),

          // Bouton de validation
          NextButton(
            borderRadius: 5,
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(100), vertical: getProportionateScreenHeight(10)),
            color: kRoundedCategoryColor,
            textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            text: 'Continuer',
            press: (){
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
                // si tout est ok on peut maintenant afficher la page succès
                Navigator.pushNamedAndRemoveUntil(context, MainScreen.routeName, (route) => false);
              }
            },
          ),
        ],
      ),
    );
  }
}