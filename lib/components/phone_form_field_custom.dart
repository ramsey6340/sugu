import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../constantes.dart';


class PhoneFormFieldCustom extends StatelessWidget {
  const PhoneFormFieldCustom({
    Key? key,
    this.initialCountryCode='ML',
    this.initialValue,
    this.hintText,
    this.searchText='Rechercher un pays',
    this.invalidNumberMessage='Ce numéro est incorrecte',
    this.borderSideColor=Colors.black,
    this.focusBorderSideColor=kRoundedCategoryColor,
    this.fillColor=Colors.white,
    this.hintTextColor=kTextColor,
    this.cursorColor=Colors.blue,
    this.inputTextColor=Colors.black,
  }) : super(key: key);

  final String? initialCountryCode;
  final String? initialValue;
  final String? hintText;
  final String searchText;
  final String? invalidNumberMessage;
  final Color borderSideColor;
  final Color focusBorderSideColor;
  final Color fillColor;
  final Color hintTextColor;
  final Color cursorColor;
  final Color inputTextColor;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      dropdownIcon: const Icon(Icons.arrow_drop_down, color: Colors.black54,),
      disableLengthCheck: false,
      searchText: searchText,
      invalidNumberMessage: invalidNumberMessage,
      dropdownTextStyle: TextStyle(color: hintTextColor, fontWeight: FontWeight.bold),
      style: TextStyle(color: inputTextColor),
      cursorColor: cursorColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        filled: true,
        fillColor: fillColor,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14, color: hintTextColor),
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
            borderSide: const BorderSide(color: Colors.transparent)
        ),
      ),
      initialCountryCode: 'ML',
      initialValue: initialValue,
    );
  }
}

