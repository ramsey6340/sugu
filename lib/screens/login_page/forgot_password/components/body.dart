import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sugu/components/next_button.dart';
import 'package:sugu/size_config.dart';
import '../../../../components/custom_suffix_icon.dart';
import '../../../../components/form_error.dart';
import '../../../../components/no_account_text.dart';
import '../../../../constantes.dart';


class Body extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: <Widget>[
              SizedBox(height: SizeConfig.screenHeight*0.04,),
              Text('Mot de passe oublié ?', style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
              ),
              Text('Veuillez entrer votre email et nous vous enverrons\n un lien pour revenir à votre compte',textAlign: TextAlign.center,),
              SizedBox(height: SizeConfig.screenHeight*0.1,),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget
{
  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm>
{
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            FormError(errors: errors),
            SizedBox(height: SizeConfig.screenHeight*0.1,),
            NextButton(
                text: 'Continue',
                press: (){
                  if(_formKey.currentState!.validate()){
                    //_formKey.currentState!.save();
                  }
                }
            ),
            SizedBox(height: SizeConfig.screenHeight*0.1,),
            NoAccountText(),
          ],
        ),
    );
  }

  // methode de traitement du champ e-mail
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
        return null;
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kEmailNullError)){
          setState(() {
            errors.add(kEmailNullError);
          });
        }
        else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
          setState(() {
            errors.add(kInvalidEmailError);
          });
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
}