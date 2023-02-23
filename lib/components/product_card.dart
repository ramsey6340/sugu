import 'package:flutter/material.dart';
import '../CRUD/read.dart';
import '../constantes.dart';
import '../models/product.dart';
import '../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.press,
    this.isSeller=false
  }) : super(key: key);
  final Product product;
  final Function press;
  final bool isSeller;

  @override
  Widget build(BuildContext context) {
    Read read = Read();
    return GestureDetector(
      onTap: press as void Function(),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Row(
                  children: [
                    CircleAvatar(
                      radius: getProportionateScreenWidth(13),
                      backgroundImage: AssetImage(read.getStoreImg(storeId: product.storeId)),
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      read.getStoreName(storeId: product.storeId),
                      style: TextStyle(fontSize: getProportionateScreenWidth(12)))
                  ],
                ),
            const SizedBox(height: 5,),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        product.images[0],
                      ),
                      fit: BoxFit.fill,
                    )
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: getProportionateScreenWidth(130),
                      child: Wrap(
                        children: [
                          ('${product.minPrice}'!='${product.maxPrice}')?Text('${product.minPrice}-', style: priceStyle,):Text(''),
                          Text('${product.maxPrice} f', style: priceStyle,)
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: (){},
                            child: const Icon(Icons.favorite_border, size: 20,),
                        ),
                        Text('${product.nbLike}', style: TextStyle(fontSize: 12),)
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: getProportionateScreenWidth(130),
                        child: Text('${product.name}', overflow: TextOverflow.ellipsis, maxLines: 2, style: TextStyle(fontSize: getProportionateScreenWidth(14)),)),
                    (read.getIsProductPopular(productId: product.productId))?SvgPicture.asset('assets/icons/badge.svg', color: Colors.blue.withOpacity(0.8), width: 16, height: 16,):SizedBox()
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}