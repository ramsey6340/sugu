import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../size_config.dart';


class NbAppreciation extends StatelessWidget {
  const NbAppreciation({Key? key, this.nb_star, required this.icon}) : super(key: key);
  final String? nb_star;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
            //color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$nb_star", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            icon,
          ],
        ),
      ),
    );
  }
}