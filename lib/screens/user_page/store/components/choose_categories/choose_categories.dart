import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'categories_list.dart';


class ChooseCategories extends StatelessWidget{
  const ChooseCategories({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CategoriesList(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: kPrimaryColor
        ),
        child: TextButton(
          onPressed: () {Navigator.pop(context);},
          child: const Text("OK", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),

        ),
      ),
    );
  }
}









