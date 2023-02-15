import 'package:flutter/material.dart';
import '../constantes.dart';
import '../size_config.dart';


class PriceFormFieldCustom extends StatelessWidget {
  const PriceFormFieldCustom({
    Key? key,
    this.hintText,
    this.errorText='',
    this.maxLine=1,
    this.textInputType,
    this.initialValue,
    this.isPassword=false,
    this.borderSideColor=Colors.black,
    this.focusBorderSideColor=kRoundedCategoryColor,
    this.fillColor=Colors.white,
    this.hintTextColor=kTextColor,
    this.cursorColor=Colors.blue,
    this.suffixColor=Colors.blue,
    this.inputTextColor=Colors.black,
    this.onChanged,
    this.validator,
    this.onTap,
  }) : super(key: key);

  final String? hintText;
  final String? errorText;
  final int maxLine;
  final TextInputType? textInputType;
  final String? initialValue;
  final bool isPassword;
  final Color borderSideColor;
  final Color focusBorderSideColor;
  final Color fillColor;
  final Color hintTextColor;
  final Color cursorColor;
  final Color suffixColor;
  final Color inputTextColor;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.43,//getProportionateScreenWidth(150),
      child: TextFormField(
        keyboardType: textInputType,
        initialValue: initialValue,
        maxLines: maxLine,
        style: TextStyle(color: inputTextColor),
        cursorColor: cursorColor,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          filled: true,
          fillColor: fillColor,
          prefixIcon: const Icon(Icons.monetization_on, ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: hintTextColor),
          errorText: errorText,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderSideColor)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: focusBorderSideColor,)
          ),

          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.transparent,)
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.transparent,)
          ),
        ),

        onChanged: onChanged,
        validator: validator,
        onTap: onTap,

      ),
    );
  }

  /*
  TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.monetization_on, ),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.black)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: kRoundedCategoryColor)
          ),

        ),
      )
   */
}