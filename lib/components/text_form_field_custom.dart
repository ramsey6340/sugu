import 'package:flutter/material.dart';
import '../../constantes.dart';


class TextFormFieldCustom extends StatefulWidget  {
  const TextFormFieldCustom({
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
  State<TextFormFieldCustom> createState() => _TextFormFieldCustomState();
}

class _TextFormFieldCustomState extends State<TextFormFieldCustom> {
  bool obscureText = true;

  void onTapHiddenButton(){
    setState(() {
      obscureText = !obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.textInputType,
      obscureText: (widget.isPassword)?obscureText:!obscureText,
      initialValue: widget.initialValue,
      maxLines: widget.maxLine,
      style: TextStyle(color: widget.inputTextColor),
      cursorColor: widget.cursorColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        filled: true,
        fillColor: widget.fillColor,
        suffixIcon: (widget.isPassword)?((obscureText)?IconButton(icon: Icon(Icons.visibility_outlined, color: widget.suffixColor,), onPressed: (){onTapHiddenButton();}, enableFeedback: false,):IconButton(icon: Icon(Icons.visibility_off_outlined, color: widget.suffixColor,), onPressed: (){onTapHiddenButton();}, enableFeedback: false)):null,
        hintText: widget.hintText,
        hintStyle: TextStyle(fontSize: 14, color: widget.hintTextColor),
        errorText: widget.errorText,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: widget.borderSideColor)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: widget.focusBorderSideColor,)
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

      onChanged: widget.onChanged,
      validator: widget.validator,
      onTap: widget.onTap,

    );
  }
}