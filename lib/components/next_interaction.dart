import 'package:flutter/material.dart';
import '../constantes.dart';


class NextInteraction extends StatelessWidget {
  const NextInteraction({
    Key? key,
    this.leading,
    this.trailing=const Icon(Icons.navigate_next),
    required this.text,
    required this.press,
    this.backgroundColor=const Color(0xFFF5F6F9),
    this.textColor=Colors.black,
    this.verticalPadding=10,
    this.radiusTopLeft=10,
    this.radiusTopRight=10,
    this.radiusBottomLeft=10,
    this.radiusBottomRight=10,
  }) : super(key: key);

  final Widget? leading;
  final Widget? trailing;
  final String text;
  final Color textColor;
  final Function()? press;
  final Color backgroundColor;
  final double radiusTopLeft;
  final double radiusTopRight;
  final double radiusBottomLeft;
  final double radiusBottomRight;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding),
      child: GestureDetector(
        onTap: press,
        child: Container(
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radiusTopLeft),
                  topRight: Radius.circular(radiusTopRight),
                  bottomLeft: Radius.circular(radiusBottomLeft),
                  bottomRight: Radius.circular(radiusBottomRight)
              )
          ),
          child: ListTile(
            leading: leading,
            title: Text(text, style: TextStyle(color: textColor),),
            trailing: trailing,
          ),
        ),
      ),
    );
  }
}