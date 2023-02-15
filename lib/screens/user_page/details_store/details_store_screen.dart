import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../../datas/datas_current.dart';
import '../../main_screen.dart';
import 'components/body.dart';
import '../../../models/store.dart';


class DetailsStoreScreen extends StatelessWidget {
  static String routeName = 'detail_store_screen';
  const DetailsStoreScreen({Key? key, required this.store}) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) {
    oldStore.setStore = store;
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kAppBarColor,
        leadingWidth: 100,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,),
          onPressed: (){
            (store.storeId == currentStore.storeId)?
            Navigator.pushAndRemoveUntil(
                context, MaterialPageRoute(builder: (context) => const MainScreen(index: 2,)), (route) => false
            ):Navigator.pop(context);
          },
        ),
        title: Text('${store.name}', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
      ),
      body: Body(store: store,),
    );
  }
}
