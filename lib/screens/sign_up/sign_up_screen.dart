import 'components/body.dart';

import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/sign_up';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription", style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
