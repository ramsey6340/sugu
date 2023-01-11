import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../components/nb_appreciation.dart';
import '../../components/rounded_icon_btn.dart';
import '../../models/product.dart';
import 'components/body.dart';


class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)?.settings.arguments as Product;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        actions: [
          NbAppreciation(
            nb_star: '${product.nb_star}',
            icon: SvgPicture.asset("assets/icons/Star Icon.svg"),
          ),
          NbAppreciation(
            nb_star: '${product.nb_like}',
            icon: SvgPicture.asset(
              (product.is_favourite)?"assets/icons/Heart Icon_2.svg":"assets/icons/Heart Icon.svg",
              color: Colors.red,))
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




