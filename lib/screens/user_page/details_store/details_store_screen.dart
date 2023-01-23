import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'components/body.dart';
import '../../../models/store.dart';


class DetailsStoreScreen extends StatelessWidget {
  const DetailsStoreScreen({Key? key, required this.store}) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: kAppBarColor,
        title: Text('${store.name}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
      ),
      body: Body(store: store,),
    );
  }
}
