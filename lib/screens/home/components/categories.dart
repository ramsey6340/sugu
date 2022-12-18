import 'package:flutter/material.dart';
import 'package:sugu/components/categoryCard.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daly Gift"},
      {"icon": "assets/icons/Discover.svg", "text": "Plus"},
    ];
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
            categories.length,
                (index) => CategoryCard(
                  svg_img: categories[index]['icon'],
                  text: categories[index]['text'], press: (){},
            )
        ),
    );
  }
}
