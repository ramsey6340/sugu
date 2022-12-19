import 'package:flutter/material.dart';
import 'package:sugu/components/product_card.dart';
import 'package:sugu/components/section_title.dart';
import '../datas/products_data.dart';
import '../size_config.dart';
import '../screens/details/details_screen.dart';


class Popularproducts extends StatelessWidget {
  const Popularproducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Produits Populaire',
          press: (){},
        ),
        SizedBox(height: getProportionateScreenHeight(20),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                products.length,
                    (index) => ProductCard(
                      product: products[index],
                      press: () => Navigator.pushNamed(
                        context,
                        DetailsScreen.routeName,
                        arguments: products[index]
                      ),
                    )
            ),
          ),
        )
      ],
    );
  }
}
