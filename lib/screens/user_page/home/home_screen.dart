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
        title: const Text("Accueil",),
        actions: [
          IconButton(
              onPressed: (){Navigator.pushNamed(context, FilterBy.routeName);},
              icon: const Icon(Icons.filter_list)
          ),
        ],
      ),
      body: Body(),
    );
  }


}
