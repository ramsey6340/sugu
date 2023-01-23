import 'package:flutter/material.dart';
import '../../../../components/buttonRounded.dart';
import '../../../../components/product_card_for_seller.dart';
import '../../../../constantes.dart';
import '../../../../datas/sub_categories.dart';
import '../../../../datas/product_data.dart';
import '../../../../models/product.dart';
import '../../../../models/store.dart';
import '../../../../size_config.dart';
import '../../details_product/details_product_screen.dart';


class Body extends StatefulWidget {
  const Body({Key? key, required this.store,}) : super(key: key);
  final Store store;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  late List<Product> productsOfStore;
  int selectedIndex = 0;


  // methode pour obtenir tous les produits d'un boutique
  List<Product> getAllProducts({required String storeId, required Categories categorySelected}){
    List<Product> productsForMe = [];
    if(categorySelected == Categories.tout){
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
    productsOfStore = getAllProducts(
        storeId: widget.store.storeId,
        categorySelected: widget.store.categories[0]);
    super.initState();
  }


  void onItemTapped(int index, Categories categorySelected) {
    setState(() {
      productsOfStore = getAllProducts(
          storeId: widget.store.storeId,
          categorySelected: categorySelected
      );
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              widget.store.categories.length,
                  (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                  child:  showType(index)
              ),
            ),
          ),
        ),

        Expanded(
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
        ),
      ],
    );
  }

  ButtonRounded showType(int index) {
    return ButtonRounded(
      isBorder: false,
      //backgroundColor: Colors.white,
      selectedBackground: kRoundedCategory,
      isSelected: selectedIndex == index,
      press: (){onItemTapped(index, widget.store.categories[index]);},
      text: '${widget.store.categories[index].name}',
      //selectedLeading: const Icon(Icons.check, color: Colors.white),

    );
  }

}
