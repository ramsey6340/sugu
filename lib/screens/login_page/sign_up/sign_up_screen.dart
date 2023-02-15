import 'package:sugu/constantes.dart';

import 'components/body.dart';

import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/sign_up';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logType = ModalRoute.of(context)?.settings.arguments as LogType;
    return Scaffold(
      backgroundColor: kAppBarColor,
      appBar: AppBar(
        title: const Text("Inscription",),
        centerTitle: true,
      ),
      body: Body(logType: logType,),
    );
  }
}
