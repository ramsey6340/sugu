import 'package:flutter/material.dart';
import '../../../../CRUD/read.dart';
import '../../../../components/product_card.dart';
import '../../../../components/test_widget.dart';
import '../../../../constantes.dart';
import '../../../../datas/product_data.dart';
import '../../../../datas/seller_data.dart';
import '../../../../datas/store_data.dart';
import '../../details/details_screen.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
              shopImg: read.getStoreImg(storeId: item.storeId),
              shopName: read.getStoreName(storeId: item.storeId),
              nbAvailable: 10,
              nbFollowers: read.getNbFollowers(storeId: item.storeId),
              product: item,
              press: () => Navigator.pushNamed(context, DetailsScreen.routeName, arguments: item),
            );
          },
        ),
      ),
    );
  }


}