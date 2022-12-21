import 'package:flutter/material.dart';
import '../../components/nb_star.dart';
import '../../components/rounded_icon_btn.dart';
import '../../models/product.dart';
import 'components/body.dart';


class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    late Product product = ModalRoute.of(context)?.settings.arguments as Product;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        actions: [
          NbStar(nb_star: '${product.nb_star}',)
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




