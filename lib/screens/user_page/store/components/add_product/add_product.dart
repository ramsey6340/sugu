import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'add_product_form.dart';


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
        title: const Text("Ajouter un produit",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: AddProductForm(),
    );
  }
}
