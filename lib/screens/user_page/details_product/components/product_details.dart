import 'package:flutter/material.dart';
import '../../../../constantes.dart';
import '../../../../models/product.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key, required this.product,}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(product.name, style: const TextStyle(fontSize: 18, overflow: TextOverflow.ellipsis),),
              Text('${product.nbAvailableProduct} disponibles', style: TextStyle(fontSize: 18,),),
            ],
          ),
          Text('${product.price} f',style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24),),
          const Text("Description", style: TextStyle(color: kPrimaryColor, fontSize: 18)),
          Text(
            "${product.description}",
            maxLines: 2,overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
          ),
          GestureDetector(
            onTap: (){},
            child: Row(
              children: const [
                Text("Voir plus",
                  style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.navigate_next, color: kPrimaryColor,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}