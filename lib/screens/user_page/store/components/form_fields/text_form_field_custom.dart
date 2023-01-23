import 'package:flutter/material.dart';
import '../../../../../constantes.dart';


class TextFormFieldCustom extends StatelessWidget  {
  const TextFormFieldCustom({Key? key, required this.hintText, this.maxLine=1, this.textInputType,}) : super(key: key);

  final String hintText;
  final int maxLine;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      maxLines: maxLine,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        filled: true,
        fillColor: Colors.white,
        //label: Text(label),
        //labelStyle: TextStyle(color: Colors.black,),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14),
        //border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: kRoundedCategory,)
        ),
      ),
    );
  }
}