import 'package:flutter/material.dart';
import 'package:sugu/size_config.dart';
import '../../../constantes.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "Completez votre profile",
                style: headingStyle,
              ),
              Text(
                "Veuillez completé votre profile pour nous permettre de vous offrir un meilleur service",
                textAlign: TextAlign.center,
              ),
              CompleteProfileForm()
            ],
          ),
        ),
      ),
    );
  }
}
