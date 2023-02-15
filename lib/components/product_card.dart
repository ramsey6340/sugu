import 'package:flutter/material.dart';

import '../CRUD/read.dart';
import '../models/product.dart';
import '../size_config.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product, required this.press,}) : super(key: key);
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Read read = Read();
    TextStyle priceStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black);
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
                    //Text(('${product.minPrice}'=='${product.maxPrice}')?'${product.maxPrice} f':'${product.minPrice}-\n${product.maxPrice} f',
                      //style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),maxLines: 2,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: (){},
                            child: const Icon(Icons.favorite_border),
                        ),
                        Text('${product.nbLike}')
                      ],
                    )
                  ],
                ),
                Text('${product.name}', overflow: TextOverflow.ellipsis,),
                Text("${read.getNbFollowers(storeId: product.storeId)} followers")

              ],
            )
          ],
        ),
      ),
    );
  }
}