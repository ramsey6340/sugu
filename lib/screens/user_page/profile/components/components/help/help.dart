import 'package:flutter/material.dart';
import 'package:sugu/components/next_interaction.dart';

import 'components/condition_and_privacy_policy.dart';
import 'components/contacted_us.dart';
import 'components/faq_sugu.dart';


class Help extends StatelessWidget {
  static String routeName = 'help';
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text("Sugu"),
            Text("Version 1.0", style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            CircleAvatar(
              radius: 150,
            ),
           const SizedBox(height: 30,),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 10),
             child: Column(
               children: [
                 NextInteraction(leading: const Icon(Icons.help, color: Colors.lightBlueAccent, size: 32, ), text: "FAQ Sugu", press: (){Navigator.pushNamed(context, FAQSugu.routeName);}, radiusBottomLeft: 0, radiusBottomRight: 0,verticalPadding: 0,),
                 const Divider(indent: 20,height: 0, color: Colors.black26,),
                 NextInteraction(leading: const Icon(Icons.question_answer_outlined, color: Colors.orangeAccent, size: 32,), text: "Contactez-nous", press: (){Navigator.pushNamed(context, ContactedUs.routeName);}, radiusTopLeft: 0, radiusBottomRight: 0, radiusBottomLeft: 0, radiusTopRight: 0, verticalPadding: 0,),
                 const Divider(indent: 20,height: 0, color: Colors.black26,),
                 NextInteraction(leading: const Icon(Icons.lock, color: Colors.green, size: 32,), text: "Condition et Politique de Confidentialité", press: (){Navigator.pushNamed(context, ConditionAndPrivacyPolicy.routeName);}, radiusTopLeft: 0, radiusTopRight: 0, verticalPadding: 0,),
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
