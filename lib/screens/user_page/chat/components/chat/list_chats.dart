import 'package:flutter/material.dart';
import '../../../../../CRUD/read.dart';
import '../../../../../components/next_page.dart';
import '../../../../../datas/store_data.dart';
import 'inbox.dart';


class ListChats extends StatelessWidget {
  const ListChats({Key? key, this.isBottomSheet=false}) : super(key: key);
  final bool isBottomSheet;

  @override
  Widget build(BuildContext context) {
    Read read = Read();

    return Container(
      padding: EdgeInsets.all(10),
      height: (isBottomSheet)?MediaQuery.of(context).size.height*0.8:null,
      child: ListView.builder(
        itemCount: stores.length,
        itemBuilder: (context, index){
          final item = stores[index];
          return Column(
            children: [
              (!read.getIsCurrentUser(sellerId: item.sellerId))?
              NextPage(
                name: item.name,
                press: (isBottomSheet)?(){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, Inbox.routeName, arguments: item);
                }:() => Navigator.pushNamed(context, Inbox.routeName, arguments: item),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(read.getStoreImg(storeId: item.storeId))
                ),
              ): const SizedBox(),
              const Divider(height: 0, color: Colors.black, indent: 50,),
            ],
          );
        },
      ),
    );
  }
}
