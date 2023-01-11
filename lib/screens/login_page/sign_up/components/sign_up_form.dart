import 'package:flutter/material.dart';
import 'package:sugu/components/Next_button.dart';
import 'package:sugu/components/form_error.dart';
import 'package:sugu/size_config.dart';
import '../../../../components/form_tools.dart';
import '../../../../components/social_card.dart';
import '../../complete_profile/complete_profile_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? confirm_password;
  late final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenHeight(20)
        ),
        child: Column(
          children: <Widget> [
            FormTools.buildEmailFormField(email, errors),
            SizedBox(height: getProportionateScreenHeight(30),),
            FormTools.buildPasswordFormField(password, errors),
            SizedBox(height: getProportionateScreenHeight(30),),
            FormTools.buildConfirmPasswordFormField(password, confirm_password, errors),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(40),),
            NextButton(
                text: "Continuer",
                press: () {
                  if(_formKey.currentState!.validate()){
                    // _formKey.currentState!.save();
                    Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                    // on peut naviguer vers la prochaine etape
                  }
                }
            ),
            SizedBox(height: getProportionateScreenHeight(40),),
            // Les moyen de connexion avec les compte réseaux sociaux
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialCard(
                    icon: 'assets/icons/google-icon.svg',
                    press: (){}
                ),
                SocialCard(
                    icon: 'assets/icons/facebook-2.svg',
                    press: (){}
                ),
                SocialCard(
                    icon: 'assets/icons/twitter.svg',
                    press: (){}
                )
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(10),),
            Text("Se connecté avec d'autre compte", textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
