import 'package:flutter/material.dart';

import '../constantes.dart';
import '../size_config.dart';


class RounderColor extends StatelessWidget {
  const RounderColor({Key? key, required this.color, this.is_selected = false, required this.press,}) : super(key: key);
  final Color color;
  final bool is_selected;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function(),
      child: Container(
        margin: EdgeInsets.only(right: 2, left: 2),
        padding: EdgeInsets.all(3),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: (is_selected)? kPrimaryColor: Colors.transparent)
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle
          ),
        ),
      ),
    );
  }
}