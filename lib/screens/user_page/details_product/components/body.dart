import 'package:flutter/material.dart';
import 'package:sugu/screens/user_page/details/components/product_details.dart';
import '../../../../CRUD/read.dart';
import '../../../../components/Next_button.dart';
import '../../../../components/next_page.dart';
import '../../../../datas/store_data.dart';
import '../../../../models/product.dart';
import 'other_product_image.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    Read read = Read();

    return SingleChildScrollView(
      child: Column(
        children: [
          OtherProductImage(product: product),
          NextPage(
            name: read.getStoreName(storeId: product.storeId),
            press: (){},
            leading: CircleAvatar(child: Image.asset(read.getStoreImg(storeId: product.storeId))),
          ),
          ProductDetails(product: product),
          Center(
            child: NextButton(text: "Discuter", press: (){}),
          ),
          const SizedBox(height: 30,),
        ],
      ),
    );
  }

}





