import 'package:flutter/material.dart';
import '../constantes.dart';
import '../size_config.dart';

class NextButton extends StatelessWidget{
  const NextButton({Key ? key, required this.text, required this.press, this.color = kPrimaryColor}):super(key: key);
  final String text;
  final Function? press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(300),
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          ),
        ),
        onPressed: press  as void Function()?,
        child: Text(text, style: TextStyle(fontSize: 18),),
      ),
    );
  }
}
