import 'package:flutter/material.dart';

import '../constantes.dart';
import '../size_config.dart';


class ImageOfCart extends StatelessWidget {
  const ImageOfCart({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: Container(
          padding: EdgeInsets.all(getProportionateScreenHeight(15)),
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(img),
        )
    );
  }
}
