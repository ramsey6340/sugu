import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'package:sugu/datas/datas_current.dart';
import '../../../../../components/category_card.dart';
import '../../../../../components/snack_bar_custom.dart';
import '../../../../../datas/global_category.dart';
import '../../../store_modification/store_modification_screen.dart';
import 'choose_sub_categories.dart';


class ChooseCategories extends StatefulWidget{
  const ChooseCategories({Key? key, required this.listGlobalCat, this.isStoreModification=false}) : super(key: key);
  final List<String> listGlobalCat;
  final bool isStoreModification; // pour verifier que c'est la page de modification du magasin qui l'appelle ou non

  @override
  State<ChooseCategories> createState() => _ChooseCategoriesState();
}

class _ChooseCategoriesState extends State<ChooseCategories> {
  List<String> categoriesName = [];
  List<String> categoriesImg = [];
  List<String> selectedGlobalCategories = []; // liste qui va contenir la catégorie global
  bool isChecked = false;
  bool isStoreNull = false;


  @override
  void initState() {
    if(widget.isStoreModification){
      categoriesName = categoriesImage.keys.toList();
      categoriesImg = categoriesImage.values.toList();
      selectedGlobalCategories = widget.listGlobalCat.toList();
    }
    else{
      categoriesName = widget.listGlobalCat.toList();

      for(int i=0; i<categoriesName.length; i++){
       categoriesImg.add(categoriesImage[categoriesName[i]]!);
      }
    }
    super.initState();
  }

  void onTapCategory(String index, bool isAdd) {
    setState(() {
      if(isAdd){
        selectedGlobalCategories.add(index);
      }
      else{
        selectedGlobalCategories.remove(index);
      }
    });
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
                    checkboxValue: (selectedGlobalCategories.contains(categoriesName[index]))?true:false,
                    onChangedCheckbox: (value){
                      setState(() {
                        isChecked = value!;
                        onTapCategory(categoriesName[index], value);
                      });
                    },
                    press: (){
                      if(selectedGlobalCategories.contains(categoriesName[index])){
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Icon(Icons.navigate_before, color: Colors.white,),
                  SizedBox(width: 20,),
                  Text("Retour", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
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
                // on met à jour l'attribue "globalCat" de oldStore en lui passant
                // une copie de "selectedGlobalCategories", d'où on utilise la méthode toList()
                oldStore.setGlobalCat = selectedGlobalCategories.toList();

                if(selectedGlobalCategories.isNotEmpty) {
                  (widget.isStoreModification)?
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    StoreModificationScreen.routeName,
                        (route) => false,
                    //arguments: selectedGlobalCategories
                  ) :
                  Navigator.push(
                      context, MaterialPageRoute(
                    builder: (context) => ChooseSubCategories(
                      selectedGlobalCategories: selectedGlobalCategories,
                    ),
                  )
                  );
                }
                else{
                  SnackBarCustom.showSnackBar(context, "Veuillez choisir au moins une catégorie");
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text((widget.isStoreModification)?"Valider":"Continuer", style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                  const SizedBox(width: 20,),
                  Icon((widget.isStoreModification)?Icons.check:Icons.navigate_next, color: Colors.white,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}









