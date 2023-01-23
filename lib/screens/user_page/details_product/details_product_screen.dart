import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../../components/nb_appreciation.dart';
import '../../../components/rounded_icon_btn.dart';
import '../../../models/product.dart';
import 'components/body.dart';


class DetailsProductScreen extends StatelessWidget {
  static String routeName = "/details_product";
  const DetailsProductScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)?.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        actions: [
          NbAppreciation(
            icon: (product.isPopular)?Icon(Icons.star, color: Colors.yellow,):Icon(Icons.star_border),
          ),
          NbAppreciation(
            nb_star: '${product.nbLike}',
            icon: (product.nbLike>0)?Icon(Icons.favorite, color: Colors.red,size: 20,):Icon(Icons.favorite_border, size: 20,)
    ),
        ],

        backgroundColor: kAppBarColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
       body: Body(product: product,),
    );
  }
}




