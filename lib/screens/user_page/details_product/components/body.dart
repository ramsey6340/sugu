import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../../../models/store.dart';
import '../../chat/components/chat/inbox.dart';
import '../../details_store/details_store_screen.dart';
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
    Store store = read.getStore(storeId: product.storeId);

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20,),
          OtherProductImage(product: product),
          NextPage(
            enable: !isCurrentUser,
            name: read.getStoreName(storeId: product.storeId),
            press: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsStoreScreen(store: store,)));},
            leading: CircleAvatar(
              backgroundImage: AssetImage(read.getStoreImg(storeId: product.storeId)),
            ),
          ),
          ProductDetails(product: product),
          Center(
            child: (!isCurrentUser)?NextButton(text: "Discuter", press: (){Navigator.pushNamed(context, Inbox.routeName, arguments: store);}, color: kSecondaryColor,): NextButton(text: "Modifier", press: (){}, color: kSecondaryColor,),
          ),
          const SizedBox(height: 30,),
        ],
      ),
    );
  }

}





