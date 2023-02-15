import 'package:flutter/material.dart';
import 'components/body.dart';
import '../../../constantes.dart';


class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: kAppBarColor,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,),),
      ),
      body: Body(),
    );
  }
}
