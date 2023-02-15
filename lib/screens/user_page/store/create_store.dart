import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../../components/store_unavailable.dart';
import '../store_modification/store_modification_screen.dart';


class CreateStore extends StatelessWidget {
  const CreateStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String message = "Vous n'avez pas de boutique encore ouverte."
        "\nCliquez sur le bouton pour ouvrir votre boutique";
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        title: const Text("Boutique"),
      ),
      body: StoreUnavailable(
        message: message,
        onPressed: (){
          Navigator.pushNamed(context, StoreModificationScreen.routeName);
        },
      ),
    );
  }
}

