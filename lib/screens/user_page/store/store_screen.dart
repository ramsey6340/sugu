import 'package:flutter/material.dart';
import 'package:sugu/CRUD/read.dart';
import 'package:sugu/constantes.dart';
import 'package:sugu/models/store.dart';
import '../../../components/buttonRounded.dart';
import '../../../datas/categories.dart';
import '../../../datas/datas_current.dart';
import '../../../datas/store_data.dart';
import '../../../size_config.dart';
import '../details_store/details_store_screen.dart';
import 'components/body.dart';


class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key, required this.store,}) : super(key: key);
  final Store store;

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {

  late Widget currentScreen;
  Categories category = Categories.all;
  int selectedIndex = 0;

  @override
  void initState() {
    currentScreen = Body(store: widget.store, category: category,);
    super.initState();
  }


  void onItemTapped(int index, Categories categorySelected) {
    setState(() {
      selectedIndex = index;
      category = categorySelected;
      currentScreen = Body(store: widget.store, category: category,);
    });
  }

  @override
  Widget build(BuildContext context) {
    Read read = Read();
    bool isCurrentUser = read.getIsCurrentUser(sellerId: widget.store.sellerId);
    return Scaffold(
        backgroundColor: kBackground,
      appBar: AppBar(
        centerTitle: true,
        leading: (isCurrentUser)?IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline_rounded)): null,
        title: Text('${widget.store.name}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black87),),
        actions: [
          getLeadingShopPage(context, widget.store),
          SizedBox(width: getProportionateScreenWidth(20),),
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: (isCurrentUser)?kPrimaryColor: Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: (isCurrentUser)?Center(child: Text('${widget.store.nbPostProduct}/${widget.store.size}', style: TextStyle(fontWeight: FontWeight.bold),)): null,
          ),
          SizedBox(width: getProportionateScreenWidth(5),)
        ],
        bottom: PreferredSize(
            preferredSize: Size(getProportionateScreenWidth(10), getProportionateScreenHeight(50)),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  widget.store.categories.length,
                  (index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                      child: showType(index, widget.store.categories[index]),
                  ),
                ),
              ),
            )
        ),
      ),
      body: currentScreen
    );
  }

  ButtonRounded showType(int index, Categories categorySelected) {
    return ButtonRounded(
      press: (){
        onItemTapped(index, categorySelected);
        },
      text: '${widget.store.categories[index].name}',
      textColor: (selectedIndex == index)? Colors.white:Colors.black,
      backgroundColor: (selectedIndex == index)?Colors.black54:kBackground,
      isBorder: (selectedIndex == index)?false:true,
    );
  }

  // le widget leading dans le App Bar de la page de magasin
  GestureDetector getLeadingShopPage(BuildContext context, Store store) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsStoreScreen(store: store))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage(currentStore.image),
          ),
          Text('${stores[0].nbFollowers}k', style: TextStyle(color: Colors.black),),
        ],
      ),
    );
  }
}
