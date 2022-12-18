import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../size_config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.text, required this.svg_img, required this.press}) : super(key: key);
  final String text;
  final String svg_img;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
          child: Column(
            children: [
              AspectRatio(
              aspectRatio: 1,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenHeight(15)),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(svg_img),
                )
              ),
              Text(text, textAlign: TextAlign.center,),
            ]
          )
      ),
    );
  }
}
