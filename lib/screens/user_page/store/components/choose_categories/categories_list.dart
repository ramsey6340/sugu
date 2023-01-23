import 'package:flutter/material.dart';

import '../../../../../components/category_card.dart';
import '../../../../../constantes.dart';
import '../../../../../datas/global_category.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  final categoriesName = categoriesImage.keys.toList();
  final categoriesImg = categoriesImage.values.toList();

  bool isChecked = false;
  List<String> selectedCategories = [];

  void onTapCategory(String index, bool isAdd) {
    setState(() {
      if(isAdd){
        selectedCategories.add(index);
      }
      else{
        selectedCategories.remove(index);
      }
      //choosedCategories.add(index);
    });
    print(selectedCategories);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: const BoxDecoration(
            color: kBackground
        ),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20
            ),
            itemCount: categoriesImg.length,
            itemBuilder: (context, index) {
              return CategoryCard(
                  image: categoriesImg[index],
                  subText: categoriesName[index],
                  isCheckbox: true,
                  checkboxValue: (selectedCategories.contains(categoriesName[index]))?true:false,
                  onChangedCheckbox: (value){
                    setState(() {
                      isChecked = value!;
                      onTapCategory(categoriesName[index], value);
                    });
                  },
                  press: (){
                    if(selectedCategories.contains(categoriesName[index])){
                      onTapCategory(categoriesName[index], false);
                    }
                    else{
                      onTapCategory(categoriesName[index], true);
                    }
                  }
              );
            }
        )
    );
  }
}
