import 'package:flutter/material.dart';
import 'package:sugu/screens/login_page/sign_up/components/sign_up_additional_info.dart';
import '../../../../components/Next_button.dart';
import '../../../../components/phone_form_field_custom.dart';
import '../../../../components/text_form_field_custom.dart';
import '../../../../constantes.dart';
import '../../../../size_config.dart';
import '../../forgot_password/forgot_password_screen.dart';


class SignUpForm extends StatefulWidget{
  const SignUpForm({Key? key, required this.logType}) : super(key: key);
  final LogType logType;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm>{
  final _formKey = GlobalKey<FormState>();

  String? passwordError = '';
  String? emailError = '';
  String? confirmPasswordError;

  String password = '';
  String confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
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

          SizedBox(height: getProportionateScreenHeight(20)),

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
                  password = value;
                  passwordError = "Entrer le mot de passe";
                });
                return passwordError;
              }
              else if(value.isNotEmpty && value.length<kPasswordMaxLength){
                setState(() {
                  password = value;
                  passwordError = "Mot de passe faible";
                });
                return passwordError;
              }
              else{
                password=value;
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

          TextFormFieldCustom(
            isPassword: true,
            hintText: 'Confirmation de mot de passe',
            fillColor: Colors.grey,
            focusBorderSideColor: Colors.transparent,
            borderSideColor: Colors.transparent,
            hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
            cursorColor: kRoundedCategoryColor,
            suffixColor: Colors.black54,
            inputTextColor: Colors.white,
            errorText: confirmPasswordError,
            // la méthode validator
            validator: (value){
              if(value!.isEmpty){
                setState(() {
                  confirmPassword = value;
                  confirmPasswordError = "Entrer la confirmation du mot de passe";
                });
                return confirmPasswordError;
              }
              else if(value.isNotEmpty && value.length<kPasswordMaxLength){
                setState(() {
                  confirmPassword = value;
                  confirmPasswordError = "mot de passe faible";
                });
                return confirmPasswordError;
              }
              else if (value != password){
                setState(() {
                  confirmPassword = value;
                  confirmPasswordError = "les mots de passes ne correspondent pas";
                });
                return confirmPasswordError;
              }
              else{
                confirmPassword=value;
                return null;
              }
            },
            // la méthode onChanged
            onChanged: (value) {
              if(value.isEmpty){
                setState(() {
                  confirmPasswordError = '';
                });
              }
              else if(value.isNotEmpty && value.length<kPasswordMaxLength){
                setState(() {
                  confirmPasswordError = '';
                });
              }
              else if(value.isNotEmpty && value.length>=kPasswordMaxLength){
                setState(() {
                  confirmPasswordError = '';
                });
              }
            },
          ),

          SizedBox(height: getProportionateScreenHeight(20)),

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
            color: kRoundedCategoryColor,
            textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            text: 'Continuer',
            press: (){
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
                // si tout est ok on peut maintenant afficher la page succès
                Navigator.pushNamed(context, SignUpAdditionalInfo.routeName);
              }
            },
          ),

        ],
      ),
    );
  }

}