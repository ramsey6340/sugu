import 'package:flutter/material.dart';
import '../constantes.dart';


class ButtonRounded extends StatelessWidget {
  const ButtonRounded({
    Key? key,
    required this.press,
    required this.text,
    this.textColor = Colors.black,
    this.backgroundColor = kBackground,
    this.isSelected=false,
    this.leading,
    this.selectedBackground = kPrimaryColor,
    this.selectedTextColor = Colors.white,
    this.selectedLeading,
    this.isBorder=true,
  }) : super(key: key);

  final Function press;
  final String text;
  final Color textColor;
  final Color selectedTextColor;
  final Color backgroundColor;
  final Color selectedBackground;
  final bool isSelected;
  final Widget? leading;
  final Widget? selectedLeading;
  final bool isBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function(),
      child: Chip(
        backgroundColor: (isSelected)? selectedBackground: backgroundColor,
        side: (isBorder)?BorderSide(color: (isSelected)?Colors.transparent:Colors.black):const BorderSide(color: Colors.transparent),
        label: Text(text, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
        labelStyle: TextStyle(color: (isSelected)?selectedTextColor:textColor),
        avatar: (isSelected)? selectedLeading: leading,
      ),
    );
  }
}
















