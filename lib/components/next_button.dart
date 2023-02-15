import 'package:flutter/material.dart';
import '../constantes.dart';
import '../size_config.dart';

class NextButton extends StatelessWidget{
  const NextButton({
    Key ? key,
    this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textStyle=const TextStyle(fontSize: 18,),
    this.child,
    this.elevation=0,
    this.padding,
    this.borderRadius=20,
    this.borderColor=Colors.transparent,
    this.borderWidth=1.0,
  }):super(key: key);
  final String? text;
  final Function()? press;
  final Color color;
  final TextStyle? textStyle;
  final Widget? child;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(padding),
        elevation: MaterialStateProperty.all(elevation),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius))
        ),
        side: MaterialStateProperty.all(
          BorderSide(color: borderColor, width: borderWidth),
        ),
      ),
      onPressed: press,
      child: (child != null)?child:Text(text!, style: textStyle,),
    );
  }
}
