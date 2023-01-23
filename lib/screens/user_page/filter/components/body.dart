import 'package:flutter/material.dart';
import 'package:sugu/components/buttonRounded.dart';

import '../../../../constantes.dart';
import '../../../../datas/global_category.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Map<int, List<int>?> selectedCat = Map();
  late List<int> listKeys;

  @override
  void initState() {
    for(int i=0; i<categoriesData.keys.length; i++){
      selectedCat[i] = [];
    }
    listKeys = selectedCat.keys.toList();
    super.initState();
  }

  void onTapButton(int globalIndex, int subIndex) {
    setState(() {
      if(!selectedCat[globalIndex]!.contains(subIndex)){
        selectedCat[globalIndex]!.add(subIndex);
      }
    });
    //print('$selectedCat');
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categoriesData.keys.length,
      itemBuilder: (context, index1){
        final item = categoriesData.keys;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text(item.elementAt(index1), style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                Wrap(
                    direction: Axis.horizontal,
                    spacing: 5,
                    children: List.generate(
                        categoriesData[item.elementAt(index1)]!.length,
                            (index2) {
                          final item2 = categoriesData[item.elementAt(index1)];
                          return ButtonRounded(
                            isSelected: (listKeys.contains(index1))?((selectedCat[index1]!.contains(index2))?true:false):false,
                            press: () {
                              onTapButton(index1, index2);
                            },
                            text: item2![index2],
                            selectedLeading: const Icon(Icons.check, color: Colors.white),
                            leading: const Icon(Icons.add, color: kPrimaryColor,),
                          );
                        }
                    )
                ),
              ],
            ),
        );
      }
    );
  }
}
