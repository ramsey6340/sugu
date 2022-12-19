import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../size_config.dart';


class NbStar extends StatelessWidget {
  const NbStar({Key? key, required this.nb_star,}) : super(key: key);
  final String nb_star;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: getProportionateScreenWidth(50),
        padding: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("$nb_star", style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
            SvgPicture.asset("assets/icons/Star Icon.svg")
          ],
        ),
      ),
    );
  }
}