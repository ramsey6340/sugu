import 'package:flutter/material.dart';

import '../CRUD/read.dart';
import '../models/product.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product, required this.press,}) : super(key: key);
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Read read = Read();
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
                  backgroundImage: AssetImage(read.getStoreImg(storeId: product.storeId)),
                ),
                const SizedBox(width: 10,),
                Text(read.getStoreName(storeId: product.storeId))
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
                      Text(('${product.minPrice}'=='${product.maxPrice}')?'${product.maxPrice} f':'${product.minPrice}-\n${product.maxPrice} f',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),maxLines: 2,),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: (){},
                              child: Icon(Icons.favorite_border),
                          ),
                          Text('${product.nbLike}')
                        ],
                      )
                    ],
                  ),
                  Text('${product.name}', overflow: TextOverflow.ellipsis,),
                  Text("${read.getNbFollowers(storeId: product.storeId)} followers")

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}