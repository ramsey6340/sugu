import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.black26.withOpacity(0.02),
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: const Text("Produits", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black87),),
      ),
      body: Body(),
    );
  }
}
