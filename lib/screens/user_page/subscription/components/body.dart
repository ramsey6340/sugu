import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:sugu/components/buttonRounded.dart';
import 'package:sugu/constantes.dart';

import '../../../../CRUD/read.dart';
import '../../../../components/next_page.dart';
import '../../../../datas/store_data.dart';
import '../../chat/components/chat/inbox.dart';
import '../../details_store/details_store_screen.dart';


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
            (!read.getIsCurrentUser(sellerId: item.sellerId))?
            NextPage(
              title: item.name,
              press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsStoreScreen(store: item)
                        ),
                      );
                    },
              leading: CircleAvatar(
                  backgroundImage: AssetImage(read.getStoreImg(storeId: item.storeId))
              ),
              subTitle: read.getSellerName(sellerId: item.sellerId),
              trailing: ButtonRounded(
                press: (){
                  Navigator.pushNamed(
                    context,
                    Inbox.routeName,
                    arguments: item,
                  );
                },
                text: 'Discuter',
                backgroundColor: kPrimaryColor,
                textColor: Colors.white,
              ),
            ): const SizedBox(),
            const Divider(height: 0, color: Colors.black, indent: 50,),
          ],
        );
      },
    );
  }
}
