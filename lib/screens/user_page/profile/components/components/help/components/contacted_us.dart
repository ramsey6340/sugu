import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';

import '../../../../../../../components/Next_button.dart';
import '../../../../../../../components/text_form_field_custom.dart';


class ContactedUs extends StatelessWidget {
  static String routeName = 'contacted_us';
  const ContactedUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contactez-nous"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Column(
          children: [
            const Text("Nous ferons de notre mieux pour vous repondre le plus top possible"),
            const SizedBox(height: 5,),
            TextFormFieldCustom(
              textInputType: TextInputType.multiline,
              maxLine: 8,
              hintText: 'Dites-nous comment nous pouvons vous aidez ',
            ),
            const SizedBox(height: 30,),
            NextButton(text: 'Envoyer par discution', press: (){}, color: kSecondaryColor,),
            const SizedBox(height: 30,),
            NextButton(text: 'Envoyer par e-mail', press: (){},),
          ],
        ),
      ),
    );
  }
}
