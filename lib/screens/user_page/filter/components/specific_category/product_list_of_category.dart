import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'components/body.dart';


class ProductListOfCategory extends StatelessWidget {
const ProductListOfCategory({Key? key, required this.category}) : super(key: key);
final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(category, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),

      ),
      body: Body(category: category,),
    );
  }

}
