import 'package:flutter/material.dart';

import '../size_config.dart';

class SpecialForYou extends StatelessWidget {
  const SpecialForYou({Key? key, required this.image, required this.category, required this.nb_available}) : super(key: key);

  final String image; // image de l'arrière plan
  final String category; // la category, ex: Smartphone
  final int nb_available; // nombre disponible

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenHeight(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF343434).withOpacity(0.4),
                          Color(0xFF343434).withOpacity(0.15),
                        ]
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(fontSize: getProportionateScreenWidth(18),fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text: "$nb_available disponibles"
                        ),
                      ]
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
