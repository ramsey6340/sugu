import 'package:flutter/material.dart';
import '../../../../components/store_card.dart';
import '../../../../datas/store_data.dart';
import '../../details_store/details_store_screen.dart';


class StoresBody extends StatelessWidget {
  const StoresBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.85,
          ),
          itemCount: stores.length,
          itemBuilder: (context, index){
            final item = stores[index];
            return StoreCard(store: item, press: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsStoreScreen(store: item))),);
          },
        ),
      ),
    );
  }
}
