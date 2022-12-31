import 'package:flutter/material.dart';

import '../constantes.dart';
import '../size_config.dart';


class SubtitleCart extends StatelessWidget {
  const SubtitleCart({Key? key, required this.price, required this.nbItem,}) : super(key: key);

  final double price;
  final int nbItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${price} fcfa',
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),),
        SizedBox(width: getProportionateScreenWidth(10),),
        Text('x${nbItem}')
      ],
    );
  }
}