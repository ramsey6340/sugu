import 'package:flutter/material.dart';
import '../../../../../../components/buttonRounded.dart';
import '../../../../../../constantes.dart';
import '../../../../../../datas/global_category.dart';
import '../../../../../../size_config.dart';


class Body extends StatefulWidget {
  const Body({Key? key, required this.category}) : super(key: key);
  final String category;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  int selectedIndex = 0;

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
              categoriesData[widget.category]!.length,
                  (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                  child:  showType(index)
              ),
            ),
          ),
        )
      ],
    );
  }

  ButtonRounded showType(int index) {
    return ButtonRounded(
      isBorder: false,
      backgroundColor: Colors.white,
      selectedBackground: kRoundedCategory,
      isSelected: selectedIndex == index,
      press: (){onItemTapped(index);},
      text: '${categoriesData[widget.category]![index]}',
    );
  }
}
