import 'package:flutter/material.dart';
import 'package:sugu/components/next_button.dart';
import 'package:sugu/constantes.dart';
import '../../../../../size_config.dart';
import 'product_add_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
              children: [
                ProductAddForm(),
                SizedBox(height: getProportionateScreenHeight(80),),
                NextButton(text: 'Ajouter', press: (){}, color: kRoundedCategory,),
              ],
            ),
        ),
      );
  }
}
