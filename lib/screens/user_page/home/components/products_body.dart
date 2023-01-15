import 'package:flutter/material.dart';
import '../../../../CRUD/read.dart';
import '../../../../components/product_card.dart';
import '../../../../components/test_widget.dart';
import '../../../../constantes.dart';
import '../../../../datas/product_data.dart';
import '../../../../datas/seller_data.dart';
import '../../../../datas/store_data.dart';
import '../../details_product/details_product_screen.dart';


class ProductsBody extends StatelessWidget {
  const ProductsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Read read = Read();

    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.55,
          ),
          itemCount: products.length,
          itemBuilder: (context, index){
            final item = products[index];
            return ProductCard(
              product: item,
              press: () => Navigator.pushNamed(context, DetailsProductScreen.routeName, arguments: item),
            );
          },
        ),
      ),
    );
  }


}