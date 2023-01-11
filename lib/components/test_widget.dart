import 'package:flutter/material.dart';
import 'package:sugu/components/product_card_for_seller.dart';
import '../../../../components/Next_button.dart';
import '../../../../models/product.dart';
import '../datas/product_data.dart';


class TestWidget extends StatelessWidget {
  static String routeName = 'test_widget';
  const TestWidget({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              products.length,
              (index) => Padding(
                padding: EdgeInsets.all(5),
                child: ProductCardForSeller(product: products[index], nbAvailable: 20,),
              ),
          )
        ),
      ),
    );
  }
}










