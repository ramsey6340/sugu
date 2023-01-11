import 'package:flutter/material.dart';

import '../models/product.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.shopImg, required this.shopName, required this.nbAvailable, required this.nbFollowers, required this.product, required this.press,}) : super(key: key);
  final Product product;
  final String shopImg;
  final String shopName;
  final int nbAvailable;
  final int nbFollowers;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function(),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('${shopImg}'),
                ),
                const SizedBox(width: 10,),
                Text('${shopName}')
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
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${product.price} f', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: (){},
                              child: (product.isFavourite)?Icon(Icons.favorite, color: Colors.red,):Icon(Icons.favorite_border),
                          ),
                          Text('${product.nbLike}')
                        ],
                      )
                    ],
                  ),
                  Text('${product.name}', overflow: TextOverflow.ellipsis,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('$nbAvailable/${product.nbTotalProduct}',),
                      Text("$nbFollowers followers")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}