import 'package:flutter/material.dart';
import 'package:sugu/CRUD/read.dart';
import 'package:sugu/constantes.dart';
import 'package:sugu/models/store.dart';
import '../../../components/buttonRounded.dart';
import '../../../datas/sub_categories.dart';
import '../../../datas/datas_current.dart';
import '../../../datas/store_data.dart';
import '../../../size_config.dart';
import '../details_store/details_store_screen.dart';
import 'components/add_product/add_product.dart';
import 'components/body.dart';


class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key, required this.store,}) : super(key: key);
  final Store store;


  @override
  Widget build(BuildContext context) {
    Read read = Read();
    bool isCurrentUser = read.getIsCurrentUser(sellerId: store.sellerId);
    return Scaffold(
        backgroundColor: kBackground,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        leading: (isCurrentUser)?IconButton(onPressed: (){Navigator.pushNamed(context, AddProduct.routeName);}, icon: Icon(Icons.add_circle_outline_rounded)): null,
        title: Text('${store.name}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
        actions: [
          (isCurrentUser)? getLeadingShopPage(context, store):const SizedBox(),
          (isCurrentUser)? SizedBox(width: getProportionateScreenWidth(20),):const SizedBox(),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: (isCurrentUser)?Text('${store.nbPostProduct}/${store.size}', style: TextStyle(fontWeight: FontWeight.bold),): Text('${store.nbPostProduct}', style: TextStyle(fontWeight: FontWeight.bold),)
          ),
          ),
          SizedBox(width: getProportionateScreenWidth(5),)
        ],
      ),
      body: Body(store: store)
    );
  }


  // le widget leading dans le App Bar de la page de magasin
  GestureDetector getLeadingShopPage(BuildContext context, Store store) {
    Read read = Read();

    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsStoreScreen(store: store))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage(currentStore.image),
          ),
          Text('${read.getNbFollowers(storeId: store.storeId)}k', style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
