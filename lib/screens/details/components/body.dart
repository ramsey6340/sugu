import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sugu/size_config.dart';
import '../../../models/product.dart';
import 'product_detail_view.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductDetailView(product: product),
        Container(
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
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                  width: getProportionateScreenWidth(64),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )
                  ),
                  child: SvgPicture.asset((product.is_favourite)?"assets/icons/Heart Icon_2.svg":"assets/icons/Heart Icon.svg", color: Colors.red,),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "${product.description}",
                  maxLines: 3,overflow: TextOverflow.ellipsis,),
              )
            ],
          ),
        ),
      ],
    );
  }
}




