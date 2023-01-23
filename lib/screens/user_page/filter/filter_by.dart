import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'components/body_filter_by.dart';


class FilterBy extends StatelessWidget {
  static String routeName = "filter_by";
  const FilterBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text("Catégorie", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
      ),
      body: BodyFilterBy(),
    );
  }
}
