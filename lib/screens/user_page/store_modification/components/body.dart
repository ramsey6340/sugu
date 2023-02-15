import 'package:flutter/material.dart';
import 'package:sugu/datas/datas_current.dart';

import '../../../../components/Next_button.dart';
import '../../../../constantes.dart';
import '../../../../models/store.dart';
import '../../../../size_config.dart';
import '../../details_store/details_store_screen.dart';
import 'store_form.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.store}) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            StoreForm(store: store),
            SizedBox(height: getProportionateScreenHeight(80),),
            NextButton(
              text: 'Enregister',
              press: (){
                currentStore.setStore = oldStore;
                print(currentStore.globalCat);
                print("=========================");
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsStoreScreen(store: store,)),
                        (route) => false
                );
              },
              color: kRoundedCategoryColor,
            ),
            SizedBox(height: getProportionateScreenHeight(20),),
          ],
        ),
      ),
    );
  }
}
