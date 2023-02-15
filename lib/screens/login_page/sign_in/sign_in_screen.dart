import 'package:flutter/material.dart';
import '../../../constantes.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget{
  static String routeName = "/sign_in";

  const SignInScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logType = ModalRoute.of(context)?.settings.arguments as LogType;

    return Scaffold(
      backgroundColor: kAppBarColor,
      appBar: AppBar(
          title: const Text("Connexion"),
      ),
      body:Body(logType: logType,),
    );
  }
}