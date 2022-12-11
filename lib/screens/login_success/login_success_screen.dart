import 'package:flutter/material.dart';
import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget
{
  static String routeName = '/login_success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: SizedBox(),
        centerTitle: true,
        title: Text('Connexion réussie'),
      ),
      body: Body(),
    );
  }
}