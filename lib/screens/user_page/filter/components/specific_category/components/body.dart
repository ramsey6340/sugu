import 'package:flutter/material.dart';
import '../../../../../../components/buttonRounded.dart';
import '../../../../../../components/product_card.dart';
import '../../../../../../constantes.dart';
import '../../../../../../datas/global_category.dart';
import '../../../../../../datas/product_data.dart';
import '../../../../../../models/product.dart';
import '../../../../../../size_config.dart';
import '../../../../details_product/details_product_screen.dart';


class Body extends StatefulWidget {
  const Body({Key? key, required this.category}) : super(key: key);
  final String category;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  late List<Product> productsOfCategory;
  int selectedSubIndex = 0;
  late String selectedSubCat;

  @override
  void initState() {
    selectedSubCat = SubCategories.tout;

    productsOfCategory = getAllProducts(
        subCategorySelected: selectedSubCat,
    );
    super.initState();
  }

  // methode pour obtenir tous les produits d'un boutique
  List<Product> getAllProducts({
    required String subCategorySelected,
  }){
    List<Product> productsForMe = [];

    for(int i=0; i<products.length; i++) {
      if(products[i].categoriesData!.keys.toList().contains(widget.category) && subCategorySelected == SubCategories.tout){
        productsForMe.add(products[i]);
      }
      else if(products[i].categoriesData!.keys.toList().contains(widget.category) && subCategorySelected != SubCategories.tout){
        if(products[i].categoriesData![widget.category]!.contains(subCategorySelected)) {
          productsForMe.add(products[i]);
        }
      }
    }

    return productsForMe;
  }

  void onItemTappedSubCat(int index) {
    setState(() {
      selectedSubIndex = index;
      selectedSubCat = categoriesData[widget.category]![index];

      productsOfCategory = getAllProducts(
          subCategorySelected: selectedSubCat
      );
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
              categoriesData[widget.category]!.length,
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
              itemCount: productsOfCategory.length,
              itemBuilder: (context, index){
                final item = productsOfCategory[index];
                return ProductCard(
                  product: item,
                  press: () => Navigator.pushNamed(context, DetailsProductScreen.routeName, arguments: item),
                );
              },
            )
          ),
        ),
      ],
    );
  }

  ButtonRounded showType(int index) {
    return ButtonRounded(
      isBorder: false,
      backgroundColor: Colors.white,
      selectedBackground: kRoundedCategoryColor,
      isSelected: selectedSubIndex == index,
      press: (){onItemTappedSubCat(index);},
      text: '${categoriesData[widget.category]![index]}',
    );
  }
}
