import 'package:flutter/material.dart';
import 'package:sugu/components/product_card_for_seller.dart';
import 'package:sugu/components/store_card.dart';
import 'package:sugu/constantes.dart';
import '../../../../components/Next_button.dart';
import '../../../../models/product.dart';
import '../CRUD/read.dart';
import '../datas/product_data.dart';
import '../models/store.dart';
import '../size_config.dart';


class TestWidget extends StatelessWidget {
  static String routeName = 'test_widget';
  const TestWidget({Key? key, required this.store}) : super(key: key);
  final Store store;
  @override
  Widget build(BuildContext context) {
    Read read = Read();
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: StoreCard(store: store, press: (){},),
      ),
    );
  }
}












