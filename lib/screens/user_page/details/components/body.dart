import 'package:flutter/material.dart';
import 'package:sugu/size_config.dart';
import '../../../components/Next_button.dart';
import '../../../components/color_palette.dart';
import '../../../components/product_description.dart';
import '../../../components/top_rounded_container.dart';
import '../../../models/product.dart';
import '../../cart/cart_screen.dart';
import 'product_detail_view.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductDetailView(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(product: product, press_more_description: (){},),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: ColorPalette(product: product),
                      ),
                      TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: getProportionateScreenWidth(15),
                              left: SizeConfig.screenWidth * 0.15,
                              right: SizeConfig.screenWidth * 0.15,
                              bottom: getProportionateScreenWidth(40),
                            ),
                            child: NextButton(
                              text: 'Contacter le vendeur',
                              press: () {},
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}





