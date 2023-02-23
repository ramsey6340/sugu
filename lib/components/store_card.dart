import 'package:flutter/material.dart';

import '../CRUD/read.dart';
import '../constantes.dart';
import '../models/store.dart';


class StoreCard extends StatelessWidget {
  const StoreCard({Key? key, required this.store, required this.press}) : super(key: key);
  final Store store;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Read read = Read();
    return GestureDetector(
      onTap: press as void Function(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text('${store.name}', style: TextStyle(color: kPrimaryColor, fontSize: 14),),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(read.getStoreImg(storeId: store.storeId)),
            ),
            Column(
              children: [
                Text('${read.getNbFollowers(storeId: store.storeId)}k abonnés', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                Text('${store.nbPostProduct} produits', style: TextStyle(color: Colors.black, fontSize: 14,)),
                (read.getIsStorePopular(storeId: store.storeId))?const Icon(Icons.star, color: Colors.yellow,):const SizedBox(),
              ],
            )
          ],
        ),
      ),
    );
  }
}