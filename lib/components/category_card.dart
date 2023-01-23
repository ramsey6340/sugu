import 'package:flutter/material.dart';

import '../constantes.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.image, required this.subText, this.isCheckbox=false, required this.press, this.onChangedCheckbox, this.checkboxValue=false,}) : super(key: key);
  final String image;
  final String subText;
  final Function press;
  final bool checkboxValue;
  final Function(bool?)? onChangedCheckbox;
  final bool isCheckbox;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(10),
            child: Stack(
                children: [
                  GestureDetector(
                    onTap: press as void Function(),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage(image)
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  (isCheckbox)?Positioned(
                      top: 0,
                      right: 2,
                      child: Checkbox(
                        shape: CircleBorder(),
                        activeColor: kRoundedCategory,
                        //fillColor: MaterialStateProperty.all(kRoundedCategory),
                        value: checkboxValue,
                        onChanged: onChangedCheckbox,
                      )
                  ):SizedBox(),
                ]
            ),
          ),
        ),
        Text(subText, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
      ],
    );
  }
}