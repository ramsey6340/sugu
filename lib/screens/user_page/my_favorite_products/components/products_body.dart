import 'package:flutter/material.dart';
import '../../../../components/product_card.dart';
import '../../../../datas/product_data.dart';
import '../../details/details_screen.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              shopImg: 'assets/images/Profile Image.png',
              shopName: 'Aoua Shop',
              nbAvailable: 10,
              nbFollowers: 10,
              product: item,
              press: () => Navigator.pushNamed(context, DetailsScreen.routeName, arguments: item),
            );
          },
        ),
      ),
    );
  }
}
