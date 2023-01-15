import 'package:flutter/material.dart';
import 'package:sugu/components/custom_app_bar.dart';
import 'components/body.dart';
import '../../../models/store.dart';


class DetailsStoreScreen extends StatelessWidget {
  const DetailsStoreScreen({Key? key, required this.store}) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.customAppBar(
        title: '${store.name}',
      ),
      body: Body(store: store,),
    );
  }
}
