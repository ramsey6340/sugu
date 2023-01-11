import 'package:flutter/material.dart';
import '../../../constantes.dart';
import 'components/products_body.dart';
import 'components/stores_body.dart';


class MyFavoriteProductScreen extends StatefulWidget {
  const MyFavoriteProductScreen({Key? key}) : super(key: key);

  @override
  State<MyFavoriteProductScreen> createState() => _MyFavoriteProductScreenState();
}

class _MyFavoriteProductScreenState extends State<MyFavoriteProductScreen> {

  late List<String> types;
  late List<Widget> screenList;
  late Widget currentScreen;
  int selectedIndex = 0;

  @override
  void initState() {
    types = ['Produits', 'Boutique'];
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
      backgroundColor: Colors.black26.withOpacity(0.02),
      appBar: AppBar(
        //elevation: 1,
        centerTitle: true,
        title: const Text("Mes favoris", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black87),),
        bottom: PreferredSize(
            preferredSize: Size(10, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  types.length,
                   (index) => showType(index),
              ),
            )
        ),
      ),
      body: currentScreen,
    );
  }
  
  GestureDetector showType(int index) {
    return GestureDetector(
      onTap: (){
        onItemTapped(index);
      },
      child: Text('${types[index]}', style: (selectedIndex == index)? textChoosed: textNotchoosed),
    );
  }
}






















