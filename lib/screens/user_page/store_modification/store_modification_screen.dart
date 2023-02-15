import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../../datas/datas_current.dart';
import '../details_store/details_store_screen.dart';
import 'components/body.dart';


class StoreModificationScreen extends StatelessWidget {
  static String routeName = 'store_modification_screen';
  const StoreModificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        leadingWidth: 100,
        leading: IconButton(
          icon: const Text("Annuler", style: TextStyle(color: Colors.red),),
          onPressed: (){
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => DetailsStoreScreen(store: currentStore,)),
                    (route) => false
            ) ;
           },
        ),
        title: Text('${currentStore.name}', style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
      ),
      body: Body(store: oldStore),
    );
  }
}
