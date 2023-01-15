import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/nb_appreciation.dart';
import '../../../components/rounded_icon_btn.dart';
import '../../../models/product.dart';
import 'components/body.dart';


class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)?.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        actions: [
          NbAppreciation(
            nb_star: '${product.nbStar}',
            icon: SvgPicture.asset("assets/icons/Star Icon.svg"),
          ),
          NbAppreciation(
            nb_star: '${product.nbLike}',
            icon: (product.isFavourite)? Icon(Icons.favorite, color: Colors.red,): Icon(Icons.favorite_border, size: 20,)
    ),
        ],
        leading: RoundedIconBtn(
            icon_data: Icons.arrow_back_outlined,
            press: () => Navigator.pop(context)
        ),
        backgroundColor: Colors.transparent,
      ),
       body: Body(product: product,),
    );
  }
}




