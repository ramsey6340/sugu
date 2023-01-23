import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'package:sugu/screens/main_screen.dart';
import 'body.dart';


class AddProduct extends StatelessWidget {
  static String routeName = 'add_product';
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: kAppBarColor,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        leadingWidth: 100,
        leading: IconButton(
          icon: Text("Annuler", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
          onPressed: (){
            Navigator.pushAndRemoveUntil(
                context, MaterialPageRoute(builder: (context) => MainScreen(index: 2,)), (route) => false);
            },
        ),
        title: const Text("Ajouter un produit",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Body(),
    );
  }
}
