import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../../components/nb_appreciation.dart';
import '../../../models/product.dart';
import 'components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';


class DetailsProductScreen extends StatelessWidget {
  static String routeName = "/details_product";
  const DetailsProductScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)?.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        actions: [
          (product.isPopular)?SvgPicture.asset('assets/icons/badge.svg', color: Colors.blue.withOpacity(0.5),):SizedBox(),
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




