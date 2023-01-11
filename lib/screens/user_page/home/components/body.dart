import 'package:flutter/material.dart';
import 'package:sugu/screens/home/components/categories.dart';
import 'package:sugu/size_config.dart';
import '../../../components/popular_products.dart';
import 'home_header.dart';
import 'promo_banner.dart';
import '../../../components/special_offers.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(20),),
                HomeHeader(),
                SizedBox(height: getProportionateScreenHeight(20),),
                PromoBanner(),
                SizedBox(height: getProportionateScreenHeight(20),),
                Categories(),
                SizedBox(height: getProportionateScreenHeight(20),),
                SpecialOffers(),
                SizedBox(height: getProportionateScreenHeight(20),),
                Popularproducts(),
                SizedBox(height: getProportionateScreenHeight(20),),
              ],
            ),
          ),
        )
    );
  }
}