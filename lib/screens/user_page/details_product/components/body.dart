import 'package:flutter/material.dart';
import 'product_details.dart';
import '../../../../CRUD/read.dart';
import '../../../../components/Next_button.dart';
import '../../../../components/next_page.dart';
import '../../../../models/product.dart';
import 'other_product_image.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    Read read = Read();
    bool isCurrentUser = read.getIsCurrentUserWithStore(storeId: product.storeId);

    return SingleChildScrollView(
      child: Column(
        children: [
          OtherProductImage(product: product),
          NextPage(
            enable: !isCurrentUser,
            name: read.getStoreName(storeId: product.storeId),
            press: (){},
            leading: CircleAvatar(
              backgroundImage: AssetImage(read.getStoreImg(storeId: product.storeId)),
            ),
          ),
          ProductDetails(product: product),
          Center(
            child: (!isCurrentUser)?NextButton(text: "Discuter", press: (){}): NextButton(text: "Modifier", press: (){}),
          ),
          const SizedBox(height: 30,),
        ],
      ),
    );
  }

}





