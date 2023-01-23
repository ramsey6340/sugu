import 'package:flutter/material.dart';
import '../../../constantes.dart';
import '../filter/filter_by.dart';
import 'components/body.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 1,
        centerTitle: true,
        title: const Text("Accueil", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
        actions: [
          IconButton(
              onPressed: (){Navigator.pushNamed(context, FilterBy.routeName);},
              icon: Icon(Icons.filter_list)
          ),
        ],
      ),
      body: Body(),
    );
  }


}
