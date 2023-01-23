import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../../../../components/category_card.dart';
import '../../../../../datas/global_category.dart';
import 'categories_list.dart';
import 'choose_sub_categories.dart';


class ChooseCategories extends StatefulWidget{
  const ChooseCategories({Key? key}) : super(key: key);

  @override
  State<ChooseCategories> createState() => _ChooseCategoriesState();
}

class _ChooseCategoriesState extends State<ChooseCategories> {
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

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kAppBarColor,
        leading: const SizedBox(),
        title: const Text("Choisir la ou les catégories",
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
      ),
      body: Container(
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
      ),


      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width/2,
            decoration: const BoxDecoration(
                color: Colors.red
            ),
            child: TextButton(
              onPressed: () {Navigator.pop(context);},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.navigate_before, color: Colors.white,),
                  SizedBox(width: 20,),
                  const Text("Retour", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                ],
              ),

            ),
          ),


          Container(
            width: MediaQuery.of(context).size.width/2,
            decoration: const BoxDecoration(
              color: kPrimaryColor
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => ChooseSubCategories(
                        selectedGlobalCategories: selectedCategories
                    )
                  )
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Continuer", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(width: 20,),
                  Icon(Icons.navigate_next, color: Colors.white,)
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}









