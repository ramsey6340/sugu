import 'package:flutter/material.dart';
import '../../../size_config.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(110),
      width: getProportionateScreenWidth(320),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF4A3298),
            borderRadius: BorderRadius.circular(20)
        ),
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(15)
        ),
        child: Text.rich(
            TextSpan(
                text: "promo Tabaski\n",
                style: TextStyle(fontSize: 18, color: Colors.white),
                children: [
                  TextSpan(
                    text: "Cashback 20%",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ],
            )
        ),
      ),
    );
  }
}
