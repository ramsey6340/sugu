import 'package:flutter/material.dart';
import '../constantes.dart';
import '../models/product.dart';
import '../size_config.dart';


class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key, required this.product, required this.press_more_description,}) : super(key: key);

  final Product product;
  final Function press_more_description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenWidth(10)),
      padding: EdgeInsets.only(top: getProportionateScreenWidth(10)),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40)
          )
      ),
      child: Column(
        children: [
          Text("${product.title}", style: Theme.of(context).textTheme.headline6,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${product.description}",
              maxLines: 3,overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
            ),
          ),
          GestureDetector(
            onTap: press_more_description as void Function(),
            child: Padding(
              padding: EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Text("Voir plus",
                    style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.navigate_next, color: kPrimaryColor,)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}