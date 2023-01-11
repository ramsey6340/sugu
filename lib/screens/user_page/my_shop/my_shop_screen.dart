import 'package:flutter/material.dart';
import 'package:sugu/CRUD/read.dart';
import 'package:sugu/constantes.dart';
import 'package:sugu/models/store.dart';
import '../../../components/custom_app_bar.dart';
import '../../../datas/store_data.dart';
import '../../../size_config.dart';
import 'components/body.dart';


class MyShopScreen extends StatelessWidget {
  const MyShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26.withOpacity(0.02),
      appBar: CustomAppBar.customAppBar(
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline_rounded)),
          title: '${stores[0].name}',
          actions: [
            getLeadingShopPage(),
            SizedBox(width: getProportionateScreenWidth(20),),
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(child: Text('${stores[0].nbPostProduct}/${stores[0].size}', style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
            SizedBox(width: getProportionateScreenWidth(5),)
          ],
      ),
      body: Body(store: stores[0],)
    );
  }


  // le widget leading dans le App Bar de la page de magasin
  Column getLeadingShopPage() {
    Read read = Read();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 10,
          backgroundImage: AssetImage(read.getStoreImg(storeId: stores[0].storeId)),
        ),
        Text('${stores[0].nbFollowers}k', style: TextStyle(color: Colors.black),),
      ],
    );
  }
}
