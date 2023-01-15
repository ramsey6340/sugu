import 'package:flutter/material.dart';
import '../../../../CRUD/read.dart';
import '../../../../components/next_page.dart';
import '../../../../datas/store_data.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Read read = Read();

    return ListView.builder(
      itemCount: stores.length,
      itemBuilder: (context, index){
        final item = stores[index];
        return Column(
          children: [
            (!read.getIsCurrentUser(sellerId: item.sellerId))?NextPage(
              name: item.name,
              press: (){},
              leading: CircleAvatar(
                backgroundImage: AssetImage(read.getStoreImg(storeId: item.storeId))
              ),
            ): SizedBox(),
            const Divider(height: 0, color: Colors.black, indent: 50,),
          ],
        );
      },
    );
  }
}
