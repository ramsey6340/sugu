import 'package:flutter/material.dart';
import 'package:sugu/components/buttonRounded.dart';
import '../../../constantes.dart';
import '../../../size_config.dart';
import 'components/stores_body.dart';
import 'components/products_body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late List<String> types;
  late List<Widget> screenList;
  late Widget currentScreen;
  int selectedIndex = 0;

  @override
  void initState() {
    types = ['Produits', 'Boutiques'];
    screenList = [ProductsBody(), StoresBody()];
    currentScreen = screenList[selectedIndex];
    super.initState();
  }


  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      currentScreen = screenList[selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        //elevation: 1,
        centerTitle: true,
        title: const Text("Accueil", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black87),),
        actions: [
          IconButton(
              onPressed: (){Scaffold.of(context).openEndDrawer();},
              icon: Icon(Icons.filter_list)
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size(getProportionateScreenWidth(10), getProportionateScreenHeight(50)),
            child: SingleChildScrollView(
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
            )
        ),
      ),
      body: currentScreen,
    );
  }

  ButtonRounded showType(int index) {
    return ButtonRounded(
      press: (){onItemTapped(index);},
      text: '${types[index]}',
      textColor: (selectedIndex == index)? Colors.white:Colors.black,
      backgroundColor: (selectedIndex == index)?Colors.black54:kBackground,
      isBorder: (selectedIndex == index)?false:true,
    );
  }

}
