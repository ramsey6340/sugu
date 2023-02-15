import 'package:flutter/material.dart';
import '../../../../../../../components/next_interaction.dart';
import '../../../../../../constantes.dart';
import 'components/notification_setting.dart';


class Setting extends StatelessWidget {
  static String routeName = 'setting';
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paramètres"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Column(
              children: [
                NextInteraction(text: "Notifications", press: (){Navigator.pushNamed(context, NotificationSetting.routeName);}, radiusBottomLeft: 0, radiusBottomRight: 0, radiusTopRight: 0, radiusTopLeft: 0,verticalPadding: 0,),
                const Divider(indent: 20,height: 0, color: Colors.black26,),
                NextInteraction(text: "Effacer le cache de l'app", press: (){showDialog(context: context, builder: (context) => alertDialog(context), barrierDismissible: false);}, radiusTopLeft: 0, radiusBottomRight: 0, radiusBottomLeft: 0, radiusTopRight: 0, verticalPadding: 0,),
                const Divider(indent: 20,height: 0, color: Colors.black26,),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AlertDialog alertDialog(BuildContext context) {
    return AlertDialog(
      title: const Text("Effacer le cache"),
      content: const Text("En effaçant le cache vous perdrez tout vos favoris et vos données locals"),
      actions: [
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kAppBarColor),
          ),

          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text("Annuler", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
          ),

          onPressed: (){},
          child: const Text("Effacer", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ],

      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
