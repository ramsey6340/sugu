import 'package:flutter/material.dart';
import '../../../../../components/buttonRounded.dart';
import '../../../../../constantes.dart';
import '../../../../../datas/global_category.dart';
import '../../../../../size_config.dart';
import '../add_product/add_product.dart';


class ChooseSubCategories extends StatefulWidget {
  const ChooseSubCategories({Key? key, required this.selectedGlobalCategories}) : super(key: key);
  final List<String> selectedGlobalCategories;

  @override
  State<ChooseSubCategories> createState() => _ChooseSubCategoriesState();
}

class _ChooseSubCategoriesState extends State<ChooseSubCategories> {

  int selectedIndex = 0;

  Map<String, List<String>> selectedSubCategories = Map();


  @override
  void initState() {
    for(int i=0; i<widget.selectedGlobalCategories.length; i++){
      selectedSubCategories[widget.selectedGlobalCategories[i]] = [];
    }
    super.initState();
  }

  void onTapSubCategory(bool isAdd,{required String globalCat, required String subCat}) {
    setState(() {
      if(isAdd){
        selectedSubCategories[globalCat]?.add(subCat);
      }
      else{
        selectedSubCategories[globalCat]?.remove(subCat);
      }
      //choosedCategories.add(index);
    });
    print(selectedSubCategories);
  }

  void onTapCategory(int index1) {
    setState(() {
      selectedIndex = index1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final subCategiriesListOfCategory = categoriesData[widget.selectedGlobalCategories[selectedIndex]];
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kAppBarColor,
        leading: const SizedBox(),
        title: const Text("Dite nous en plus",
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
      ),


      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                widget.selectedGlobalCategories.length,
                    (index1) => Container(
                    margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                    child:  showType(index1)
                ),
              ),
            ),
          ),
          
          Expanded(
            child: ListView.builder(
              itemCount: subCategiriesListOfCategory?.length,
              itemBuilder: (context, index2){
                return Material(
                  elevation: 3,
                  child: CheckboxListTile(
                    tileColor: Colors.white,
                    activeColor: kSecondaryColor,
                    value: (selectedSubCategories[widget.selectedGlobalCategories[selectedIndex]]?.contains(subCategiriesListOfCategory![index2]))!?true:false,
                    onChanged: (value){
                      setState(() {
                        onTapSubCategory(value!, globalCat: widget.selectedGlobalCategories[selectedIndex], subCat: subCategiriesListOfCategory![index2]);
                      });
                    },
                    secondary: CircleAvatar(
                      backgroundColor: kBackground,
                      backgroundImage: AssetImage('assets/images/chaussure1.jpg'),
                    ),
                    title: Text(categoriesData[widget.selectedGlobalCategories[selectedIndex]]![index2]),
                  ),
                );
              }
            ),
          ),
        ],
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
                Navigator.pushNamedAndRemoveUntil(
                    context, AddProduct.routeName, (route) => false);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Valider", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(width: 20,),
                  Icon(Icons.check, color: Colors.white,)
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }


  ButtonRounded showType(int index1) {
    return ButtonRounded(
      isBorder: false,
      selectedBackground: kRoundedCategory,
      isSelected: selectedIndex == index1,
      press: (){onTapCategory(index1);},
      text: '${widget.selectedGlobalCategories[index1]}',
    );
  }
}
