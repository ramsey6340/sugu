import 'package:flutter/material.dart';
import '../../../../../CRUD/read.dart';
import '../../../../../components/buttonRounded.dart';
import '../../../../../components/next_page.dart';
import '../../../../../components/notification_bubble.dart';
import '../../../../../constantes.dart';
import '../../../../../datas/notification_data.dart';
import '../../../../../datas/store_data.dart';
import '../../../../../size_config.dart';
import 'inbox.dart';
import 'package:badges/badges.dart';


class ListMessages extends StatefulWidget {
  const ListMessages({Key? key,}) : super(key: key);

  @override
  State<ListMessages> createState() => _ListMessagesState();
}

class _ListMessagesState extends State<ListMessages> {

  late List<String> types;

  int selectedIndex = 0;
  List<int> selectedNotificationIndex = [];
  List<int> notificationsRead = [];
  bool isExpanded = false;
  Function(bool)? trueFunc;
  Function(bool)? falseFunc;

  int nbMessage = 200;
  int nbInboxMessage = 5;

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

  void onTapExpanded(bool value, int notificationIndex){
    setState(() {
      if(!notificationsRead.contains(notificationIndex)){
        notificationsRead.add(notificationIndex);
      }
      isExpanded = value;
      if(selectedNotificationIndex.contains(notificationIndex) && !isExpanded){
        selectedNotificationIndex.remove(notificationIndex);
      }
      else if (!selectedNotificationIndex.contains(notificationIndex) && isExpanded){
        selectedNotificationIndex.add(notificationIndex);
      }
    });
    //print(notificationsRead);
  }

  @override
  Widget build(BuildContext context) {
    Read read = Read();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10,),
      child: Column(
        children: [
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
          Divider(color: Colors.black.withOpacity(0.5), height: 0,),

          Expanded(
            child: (selectedIndex == 0)?
            ListView.builder(
              itemCount: stores.length,
              itemBuilder: (context, index){
                final item = stores[index];
                return Column(
                  children: [
                    (!read.getIsCurrentUser(sellerId: item.sellerId))?
                    NextPage(
                      title: item.name,
                      press: () => Navigator.pushNamed(context, Inbox.routeName, arguments: item),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(read.getStoreImg(storeId: item.storeId))
                      ),
                      subTitle: 'Ok, on fait comme ça',
                      trailing: Badge(
                        badgeContent: Text('$nbInboxMessage', style: TextStyle(color: Colors.white),),
                        showBadge: nbInboxMessage>0,
                        badgeAnimation: const BadgeAnimation.slide(toAnimate: false),
                      ),
                    ): const SizedBox(),
                    const Divider(height: 0, color: Colors.black, indent: 50,),
                  ],
                );
              },
            ): ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index){
                final item = notifications[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: NotificationBubble(
                    onCloseButtonPressed: () {},
                    notificationType: item.notificationType,
                    onExpansionChanged: (value){
                      onTapExpanded(value, index);
                      },
                    isSelected: selectedNotificationIndex.contains(index),
                    title: item.title,
                    content: item.content,
                    isRead: notificationsRead.contains(index),
                    ),
                  );
              },
            ),
          ),
        ],
      ),
    );
  }

  Badge showType(int index) {
    return Badge(
      showBadge: (nbMessage>0)?(selectedIndex != index)?true:false:false,
      badgeContent: Text((nbMessage>=100)?'+99':'$nbMessage', style: const TextStyle(color: Colors.white),),
      badgeAnimation: const BadgeAnimation.slide(toAnimate: false),
      child: ButtonRounded(
        isBorder: false,
        selectedBackground: kRoundedCategoryColor,
        isSelected: selectedIndex == index,
        press: (){onItemTapped(index);},
        text: '${types[index]}',
      ),
    );
  }
}
