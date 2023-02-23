import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';

import '../../../../../../../components/next_interaction.dart';


class NotificationSetting extends StatefulWidget {
  static String routeName = 'notification_setting';
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool promotionSwitch = true;
  bool addNewProductSwitch = true;
  bool expirationSwitch = true;

  void onTapPromotionSwitch(bool value){
   setState(() {
     promotionSwitch = !promotionSwitch;
   });
  }

  void onTapAddNewProductSwitch(bool value){
   setState(() {
     addNewProductSwitch = !addNewProductSwitch;
   });
  }

  void onTapExpirationSwitch(bool value){
    setState(() {
      expirationSwitch = !expirationSwitch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            const Text("\tRécevoir les notifications de:", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
            Column(
              children: [
                NextInteraction(
                  text: "Promotions",
                  press: (){},
                  trailing: Switch(value: promotionSwitch, onChanged: (value) {onTapPromotionSwitch(value);}, activeColor: kRoundedCategoryColor, inactiveThumbColor: Colors.blueGrey),
                  radiusBottomLeft: 0, radiusBottomRight: 0, radiusTopRight: 0, radiusTopLeft: 0,verticalPadding: 0,),
                const Divider(indent: 20,height: 0, color: Colors.black26,),
                NextInteraction(
                  text: "Ajout de nouveau produit",
                  press: (){},
                  trailing: Switch(value: addNewProductSwitch, onChanged: (value) {onTapAddNewProductSwitch(value);}, activeColor: kRoundedCategoryColor, inactiveThumbColor: Colors.blueGrey),
                  radiusTopLeft: 0, radiusBottomRight: 0, radiusBottomLeft: 0, radiusTopRight: 0, verticalPadding: 0,),
                const Divider(indent: 20,height: 0, color: Colors.black26,),
                NextInteraction(
                  text: "Fin d'abonnement",
                  press: (){},
                  trailing: Switch(value: expirationSwitch, onChanged: (value) {onTapExpirationSwitch(value);}, activeColor: kRoundedCategoryColor, inactiveThumbColor: Colors.blueGrey),
                  radiusTopLeft: 0, radiusBottomRight: 0, radiusBottomLeft: 0, radiusTopRight: 0, verticalPadding: 0,),
                const Divider(indent: 20,height: 0, color: Colors.black26,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
