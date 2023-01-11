import 'package:flutter/material.dart';
import 'package:sugu/components/product_card.dart';
import '../../../../components/product_card_for_seller.dart';
import '../../../../datas/product_data.dart';
import '../../../../models/product.dart';
import '../../../../models/store.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.store}) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) {
    List<Product> productsOfStore = getAllProducts(store.storeId);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          itemCount: store.categories.length,
            itemBuilder: (context, index){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${store.categories[index].name.toUpperCase()}', style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, ),),
                  const Divider(color: Colors.black54, height: 1,),
                  SingleChildScrollView(
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
                  const SizedBox(height: 20,),
                ],
              );
            },
        ),
    );
  }

  // methode pour obtenir tous les produits d'un magasin
  List<Product> getAllProducts(String storeId){
    List<Product> products = [];
    for(int i=0; i<products.length; i++){
      if(products[i].storeId == storeId){
        products.add(products[i]);
      }
    }
    return products;
  }



}
