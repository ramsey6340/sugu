import 'package:flutter/material.dart';
import 'package:sugu/models/product.dart';
import '../constantes.dart';
import '../size_config.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product, required this.press}) : super(key: key);
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press as void Function(),
        child: SizedBox(
          width: getProportionateScreenWidth(130),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kSecondaryColor.withOpacity(0.1),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              Text(
                product.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Text(
                '${product.price} fcfa',
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
