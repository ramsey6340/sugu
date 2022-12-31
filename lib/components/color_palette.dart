import 'package:flutter/material.dart';
import 'package:sugu/components/rounder_color.dart';

import '../models/product.dart';
import '../screens/details/components/body.dart';


class ColorPalette extends StatefulWidget {
  const ColorPalette({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ColorPalette> createState() => _ColorPaletteState();
}

class _ColorPaletteState extends State<ColorPalette> {
  int selectedColor = 0;

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.product.colors.length,
            (index) =>  RounderColor(
          press: (){
            setState(() {
              selectedColor = index;
            });
          },
          color: widget.product.colors[index],
          is_selected: selectedColor == index,
        ),
      ),
    );
  }
}