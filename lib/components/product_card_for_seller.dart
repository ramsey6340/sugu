import 'package:flutter/material.dart';

import '../models/product.dart';


class ProductCardForSeller extends StatelessWidget {
  const ProductCardForSeller({Key? key, required this.product, required this.nbAvailable,}) : super(key: key);
  final Product product;
  final int nbAvailable;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height/2.22,
        width: MediaQuery.of(context).size.width/2.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${product.price} f", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                    Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.red,),
                        Text('${product.nbLike}')
                      ],
                    )
                  ],
                ),
                Text('${product.name}', overflow: TextOverflow.ellipsis,),
                Text("$nbAvailable/${product.nbTotalProduct} disponible", overflow: TextOverflow.ellipsis,)
              ],
            )
          ],
        ),
      ),
    );
  }
}