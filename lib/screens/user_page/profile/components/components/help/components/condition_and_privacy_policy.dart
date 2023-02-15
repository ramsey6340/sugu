import 'package:flutter/material.dart';


class ConditionAndPrivacyPolicy extends StatelessWidget {
  static String routeName = 'condition_and_privacy_policy';
  const ConditionAndPrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Condition et Politique de confidentialité"),
      ),
    );
  }
}
