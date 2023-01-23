import 'package:flutter/material.dart';
import '../../../../../CRUD/read.dart';
import '../../../../../components/buttonRounded.dart';
import '../../../../../components/next_page.dart';
import '../../../../../constantes.dart';
import '../../../../../datas/store_data.dart';
import '../../../../../size_config.dart';
import 'inbox.dart';


class ListMessages extends StatefulWidget {
  const ListMessages({Key? key, this.isBottomSheet=false}) : super(key: key);
  final bool isBottomSheet;

  @override
  State<ListMessages> createState() => _ListMessagesState();
}

class _ListMessagesState extends State<ListMessages> {

  late List<String> types;

  int selectedIndex = 0;

  @override
  void initState() {
    types = ['Messages', 'Notifications'];
    super.initState();
  }


  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Read read = Read();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10,),
      height: (widget.isBottomSheet)?MediaQuery.of(context).size.height*0.8:null,
      child: Column(
        children: [
          (widget.isBottomSheet)?Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 10,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(5)
            ),
          ):
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                types.length,
                    (index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                    child:  showType(index)
                ),
              ),
            ),
          ),
          Expanded(
            child: (selectedIndex == 0)?ListView.builder(
              itemCount: stores.length,
              itemBuilder: (context, index){
                final item = stores[index];
                return Column(
                  children: [
                    (!read.getIsCurrentUser(sellerId: item.sellerId))?
                    NextPage(
                      name: item.name,
                      press: (widget.isBottomSheet)?(){
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
            ): Center(
              child: Text("Aucune notification"),
    ),
          ),
        ],
      ),
    );
  }

  ButtonRounded showType(int index) {
    return ButtonRounded(
      isBorder: false,
      backgroundColor: Colors.white,
      selectedBackground: kRoundedCategory,
      isSelected: selectedIndex == index,
      press: (){onItemTapped(index);},
      text: '${types[index]}',
    );
  }
}
