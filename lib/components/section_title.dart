import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, required this.title, required this.press}) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$title", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text("Voir plus"),
        )
      ],
    );
  }
}
