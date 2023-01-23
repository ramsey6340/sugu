import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../../../components/category_card.dart';
import '../../store/components/choose_categories/choose_categories.dart';
import 'specific_category/product_list_of_category.dart';
import '../../../../datas/global_category.dart';


class BodyFilterBy extends StatelessWidget {
  const BodyFilterBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriesName = categoriesImage.keys.toList();
    final categoriesImg = categoriesImage.values.toList();

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
              press: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context)=> ProductListOfCategory(
                    category: categoriesName[index]
                  )
                )
              ),
            );
          }
      )
    );
  }
}

