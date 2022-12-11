import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'custom_suffix_icon.dart';

class FormTools
{

  // Champ d'email
  static TextFormField buildEmailFormField(String? email, List<String?> errors)
  {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kEmailNullError)){
          errors.remove(kEmailNullError);
        }
        else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
          errors.remove(kInvalidEmailError);
        }
        return null;// pour que lorsqu'on clique sur le boutton on n'avance pas si le champs n'est pas renseigner
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kEmailNullError)){
          errors.add(kEmailNullError);
          return "";
        }
        else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
          errors.add(kInvalidEmailError);
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

  // Champ de mot de passe
  static TextFormField buildPasswordFormField(String? password, List<String?> errors)
  {
    return TextFormField(
      obscureText:true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kPassNullError)){
          errors.remove(kPassNullError);
        }
        else if(value.length<6 && !errors.contains(kShortPassError)){
          errors.add(kShortPassError);
        }
        else{
          errors.remove(kShortPassError);
        }
        return null;
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kPassNullError)){
          errors.add(kPassNullError);
          return "";// pour que lorsqu'on clique sur le boutton on n'avance pas si le champs n'est pas renseigner
        }
        else if(value.length<6 && !errors.contains(kShortPassError)){
          errors.add(kShortPassError);
          return ""; // pour que lorsqu'on clique sur le boutton on n'avance pas si le champs n'est pas renseigner
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

  // Champ de confirmation de mot de passe mot de passe
  static TextFormField buildConfirmPasswordFormField(String? password, String? confirm_password, List<String?> errors)
  {
    return TextFormField(
      obscureText:true,
      onSaved: (newValue) => confirm_password = newValue,
      onChanged: (value){
        if(value.isNotEmpty && value != password && !errors.contains(KPassConfirmError)){
          errors.add(KPassConfirmError);
        }
        return null;
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(KPassConfirmError)){
          errors.add(KPassConfirmError);
          return "";// pour que lorsqu'on clique sur le boutton on n'avance pas si le champs n'est pas renseigner
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Confirmation de mot de passe',
        hintText: 'Confirmation',
        //floatingLabelBehavior: FloatingLabelBehavior.always,//permet d'avoir "Email" ecrit sur la bordure et "Entrer votre email" à l'interieur
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg',),
      ),
    );
  }

  // Champ de Prenom
  static TextFormField buildFirstNameFormField(String? first_name, List<String?> errors)
  {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => first_name = newValue,
      onChanged: (value){},
      validator: (value){
        if(value!.isEmpty && !errors.contains("Valeur incorrecte")){
          errors.add("Valeur incorrecte");
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Prénom',
        hintText: 'Entrer votre prénom',
        //floatingLabelBehavior: FloatingLabelBehavior.always,//permet d'avoir "Email" ecrit sur la bordure et "Entrer votre email" à l'interieur
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg',),
      ),
    );
  }

  // Champ de Nom
  static TextFormField buildLastNameFormField(String? last_name, List<String?> errors)
  {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => last_name = newValue,
      onChanged: (value){},
      validator: (value){
        if(value!.isEmpty && !errors.contains("Valeur incorrecte")){
          errors.add("Valeur incorrecte");
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Nom',
        hintText: 'Entrer votre Nom',
        //floatingLabelBehavior: FloatingLabelBehavior.always,//permet d'avoir "Email" ecrit sur la bordure et "Entrer votre email" à l'interieur
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg',),
      ),
    );
  }

  // Champ de Numero de téléphone
  static TextFormField buildPhoneNumberFormField(String? phone_number, List<String?> errors)
  {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phone_number = newValue,
      onChanged: (value){},
      validator: (value){
        if(value!.isEmpty && !errors.contains("Valeur incorrecte")){
          errors.add("Valeur incorrecte");
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Numero',
        hintText: 'Entrer votre numero de téléphone',
        //floatingLabelBehavior: FloatingLabelBehavior.always,//permet d'avoir "Email" ecrit sur la bordure et "Entrer votre email" à l'interieur
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Phone.svg',),
      ),
    );
  }

  // Champ de d'adresse
  static TextFormField buildAddressFormField(String? address, List<String?> errors)
  {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      onSaved: (newValue) => address = newValue,
      onChanged: (value){},
      validator: (value){
        if(value!.isEmpty && !errors.contains("Valeur incorrecte")){
          errors.add("Valeur incorrecte");
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Adresse',
        hintText: 'Entrer votre adresse',
        //floatingLabelBehavior: FloatingLabelBehavior.always,//permet d'avoir "Email" ecrit sur la bordure et "Entrer votre email" à l'interieur
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Location point.svg',),
      ),
    );
  }

}