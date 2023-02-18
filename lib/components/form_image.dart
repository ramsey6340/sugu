import 'package:flutter/material.dart';
import '../constantes.dart';
import '../size_config.dart';


class FormImage extends StatelessWidget {
  const FormImage({
    Key? key,
    required this.imageUrl,
    this.width=320,
    this.height=320
  }) : super(key: key);
  final String imageUrl;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl,
      width: getProportionateScreenWidth(width),
      height: getProportionateScreenHeight(height),
    );
  }
}
