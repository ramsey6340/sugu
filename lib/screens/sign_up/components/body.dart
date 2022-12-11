import 'package:flutter/material.dart';
import 'sign_up_form.dart';
import '../../../constantes.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Creation de conpte",
              style: headingStyle,
            ),
            Text(
              "Veuillez remplir les champs suivant ou continuer avec un compte réseaun social",
              style: subHeadingStyle,
            ),
            SignUpForm()
          ],
        ),
      ),
    );
  }
}
