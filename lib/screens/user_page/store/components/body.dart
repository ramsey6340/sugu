import 'package:flutter/material.dart';
import '../../../../CRUD/read.dart';
import '../../../../components/buttonRounded.dart';
import '../../../../components/product_card.dart';
import '../../../../constantes.dart';
import '../../../../datas/global_category.dart';
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
  late List<Product> productsOfCategory;
  int selectedIndex = 0;
  int selectedSubIndex = 0;
  late String selectedGlobalCat;
  late String selectedSubCat;

  // methode pour obtenir tous les produits d'un boutique
  List<Product> getAllProducts({
    required String globalCategorySelected,
    required String subCategorySelected,
  }){
    List<Product> productsForMe = [];

    for(int i=0; i<productsOfStore.length; i++) {
      if(productsOfStore[i].categoriesData!.keys.toList().contains(globalCategorySelected) && subCategorySelected == SubCategories.tout){
        productsForMe.add(productsOfStore[i]);
      }
      else if(productsOfStore[i].categoriesData!.keys.toList().contains(globalCategorySelected) && subCategorySelected != SubCategories.tout){
        if(productsOfStore[i].categoriesData![globalCategorySelected]!.contains(subCategorySelected)) {
          productsForMe.add(productsOfStore[i]);
        }
      }
    }

    return productsForMe;
  }

  @override
  void initState() {
    Read read = Read();
    selectedGlobalCat = widget.store.globalCat[selectedIndex];
    selectedSubCat = categoriesData[selectedGlobalCat]![selectedSubIndex];

    productsOfStore = read.getAllProducts(storeId: widget.store.storeId);
    productsOfCategory = getAllProducts(
        globalCategorySelected: selectedGlobalCat,
        subCategorySelected: selectedSubCat
    );

    super.initState();
  }


  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      selectedSubIndex = 0;
      selectedGlobalCat = widget.store.globalCat[selectedIndex];

      productsOfCategory = getAllProducts(
          globalCategorySelected: selectedGlobalCat,
          subCategorySelected: selectedSubCat
      );

    });
  }

  void onItemTappedSubCat(int index) {
    setState(() {
      selectedSubIndex = index;
      selectedSubCat = subCategories(selectedGlobalCat)[index];

      productsOfCategory = getAllProducts(
          globalCategorySelected: selectedGlobalCat,
          subCategorySelected: selectedSubCat
      );
    });
  }

  List<String> subCategories(String index) {
    return categoriesData[index]!;
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              widget.store.globalCat.length,
                  (index1) => Container(
                  margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                  child:  showType(index1)
              ),
            ),
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              subCategories(selectedGlobalCat).length,
                  (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                  child:  showSubType(index)
              ),
            ),
          ),
        ),
        Divider(color: Colors.black.withOpacity(0.5), height: 0,),

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
                  isSeller: true,
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
      selectedBackground: kRoundedCategoryColor,
      isSelected: selectedIndex == index,
      press: (){onItemTapped(index);},
      text: '${widget.store.globalCat[index]}',

    );
  }

  ButtonRounded showSubType(int index) {
    return ButtonRounded(
      isBorder: false,
      selectedBackground: kRoundedCategoryColor,
      isSelected: selectedSubIndex == index,
      press: (){onItemTappedSubCat(index);},
      text: '${subCategories(selectedGlobalCat)[index]}',
    );
  }

}
