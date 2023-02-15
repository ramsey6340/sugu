import 'package:flutter/material.dart';
import 'package:sugu/components/next_button.dart';
import 'package:sugu/constantes.dart';
import '../../../../../size_config.dart';
import 'product_add_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
              children: [
                const ProductAddForm(),
                SizedBox(height: getProportionateScreenHeight(30),),
                NextButton(text: 'Ajouter', press: (){}, color: kRoundedCategoryColor, textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                SizedBox(height: getProportionateScreenHeight(60),),
              ],
            ),
        ),
      );
  }
}
