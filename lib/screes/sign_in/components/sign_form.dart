import 'package:flutter/material.dart';
import 'package:sugu/screes/forgot_password/forgot_password_screen.dart';

import '../../../components/Next_button.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../components/form_error.dart';
import '../../../constantes.dart';
import '../../../size_config.dart';
import '../../login_success/login_success_screen.dart';


class SignForm extends StatefulWidget{
  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm>{
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;

  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          Column(
            children: [
              Row(
                children: <Widget>[
                  Checkbox(
                      value: remember,
                      activeColor: kPrimaryColor,
                      onChanged: (value){
                        setState(() {
                          remember = value;
                        });
                      }
                  ),
                  Text('Se souvenir de moi'),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
                child: Text(
                  'j\'ai oublié mon mot de passe',
                  style: TextStyle(color: kPrimaryColor,decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          NextButton(
            text: 'Continuer',
            press: (){
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
                // si tout est ok on peut maintenant afficher la page succès
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField()
  {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kEmailNullError)){
          setState(() {
            errors.remove(kEmailNullError);
          });
        }
        else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;// pour que lorsqu'on clique sur le boutton on n'avance pas si le champs n'est pas renseigner
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kEmailNullError)){
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        }
        else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";// pour que lorsqu'on clique sur le boutton on n'avance pas si le champs n'est pas renseigner
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Entrer votre email',
        //floatingLabelBehavior: FloatingLabelBehavior.always,//permet d'avoir "Email" ecrit sur la bordure et "Entrer votre email" à l'interieur
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg',),
      ),
    );
  }

  TextFormField buildPasswordFormField()
  {
    return TextFormField(
      obscureText:true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kPassNullError);
          });
        }
        else if(value.length>=6 && errors.contains(kShortPassError)){
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        return null;
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kPassNullError)){
          setState(() {
            errors.add(kPassNullError);
          });
          return "";// pour que lorsqu'on clique sur le boutton on n'avance pas si le champs n'est pas renseigner
        }
        else if(value.length<6 && !errors.contains(kShortPassError)){
          setState(() {
            errors.add(kShortPassError);
          });
          return "";// pour que lorsqu'on clique sur le boutton on n'avance pas si le champs n'est pas renseigner
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Mot de passe',
        hintText: 'Entrer votre mot de passe',
        //floatingLabelBehavior: FloatingLabelBehavior.always,//permet d'avoir "Email" ecrit sur la bordure et "Entrer votre email" à l'interieur
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg',),
      ),
    );
  }
}