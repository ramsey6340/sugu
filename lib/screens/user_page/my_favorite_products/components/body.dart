import 'package:flutter/material.dart';
import '../../../../components/buttonRounded.dart';
import '../../../../components/product_card.dart';
import '../../../../components/store_card.dart';
import '../../../../constantes.dart';
import '../../../../datas/product_data.dart';
import '../../../../datas/store_data.dart';
import '../../../../size_config.dart';
import '../../details_product/details_product_screen.dart';
import '../../details_store/details_store_screen.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {


  late List<String> types;

  int selectedIndex = 0;

  @override
  void initState() {
    types = ['Produits', 'Boutiques'];
    super.initState();
  }


  void onItemTapped(int index) {
    setState(() {
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
              types.length,
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
            child: (selectedIndex == 0)?
            GridView.builder(
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
            ):GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.85,
              ),
              itemCount: stores.length,
              itemBuilder: (context, index){
                final item = stores[index];
                return StoreCard(store: item, press: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsStoreScreen(store: item))),);
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
      selectedBackground: kRoundedCategoryColor,
      isSelected: selectedIndex == index,
      press: (){onItemTapped(index);},
      text: '${types[index]}',
    );
  }
}