import 'package:flutter/material.dart';
import 'components/body.dart';


class FilterScreen extends StatelessWidget {
  static String routeName = 'filter';
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: const Text("Filtrer par ...", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black87),),
      ),
      body: Body(),
    );
  }
}
