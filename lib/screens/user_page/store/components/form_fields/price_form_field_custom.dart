import 'package:flutter/material.dart';
import '../../../../../constantes.dart';
import '../../../../../size_config.dart';


class PriceFormFieldCustom extends StatelessWidget {
  const PriceFormFieldCustom({Key? key, required this.hintText, this.textInputType,}) : super(key: key);

  final String hintText;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(150),
      child: TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.monetization_on, ),
          //label: Text(label,),
          //labelStyle: const TextStyle(color: Colors.black,),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.black)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: kRoundedCategory)
          ),

        ),
      ),
    );
  }
}