import 'package:flutter/material.dart';
import 'package:sugu/components/section_title.dart';
import 'package:sugu/components/special%20_for_you.dart';
import '../size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Specialement pour vous", press: (){}),
        SizedBox(height: getProportionateScreenHeight(20),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialForYou(image: 'assets/images/Image Banner 2.png', category: 'Smartphone', nb_available: 18,),
              SpecialForYou(image: 'assets/images/Image Banner 3.png', category: 'Fashion', nb_available: 24,),
            ],
          ),
        ),
      ],
    );
  }
}
