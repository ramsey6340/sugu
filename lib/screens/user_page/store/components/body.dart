import 'package:flutter/material.dart';
import 'package:sugu/components/product_card.dart';
import '../../../../components/product_card_for_seller.dart';
import '../../../../datas/categories.dart';
import '../../../../datas/product_data.dart';
import '../../../../models/product.dart';
import '../../../../models/store.dart';
import '../../details_product/details_product_screen.dart';


class Body extends StatefulWidget {
  const Body({Key? key, required this.store, required this.category}) : super(key: key);
  final Store store;
  final Categories category;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  late List<Product> productsOfStore;

  // methode pour obtenir tous les produits d'un boutique
  List<Product> getAllProducts({required String storeId, required Categories categorySelected}){
    List<Product> productsForMe = [];
    if(categorySelected == Categories.all){
      for(int i=0; i<products.length; i++){
        if(products[i].storeId == storeId){
          productsForMe.add(products[i]);
        }
      }
    }
    else{
      for(int i=0; i<products.length; i++){
        if(products[i].storeId == storeId && products[i].categories.contains(categorySelected)){
          productsForMe.add(products[i]);
        }
      }
    }
    return productsForMe;
  }

  @override
  void initState() {
    productsOfStore = getAllProducts(storeId: widget.store.storeId, categorySelected: widget.category);
    print(widget.category.name);
    super.initState();
  }

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
          itemCount: productsOfStore.length,
          itemBuilder: (context, index){
            final item = productsOfStore[index];
            return ProductCardForSeller(
              product: item,
              press: () => Navigator.pushNamed(context, DetailsProductScreen.routeName, arguments: item),
            );
          },
        ),
      ),
    );
  }

}
