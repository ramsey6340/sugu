import 'package:flutter/material.dart';

import '../../../components/buttonRounded.dart';
import '../../../constantes.dart';
import '../../../size_config.dart';
import 'components/chat/list_chats.dart';
import 'components/notification/list_notifications.dart';



class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {

  late List<String> types;
  late List<Widget> screenList;
  late Widget currentScreen;
  int selectedIndex = 0;

  @override
  void initState() {
    types = ['Messages', 'Notifications'];
    screenList = [ListChats(), ListNotifications()];
    currentScreen = screenList[selectedIndex];
    super.initState();
  }


  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      currentScreen = screenList[selectedIndex];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: const Text("Inbox", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black87),),
          bottom: PreferredSize(
              preferredSize: Size(getProportionateScreenWidth(10), getProportionateScreenHeight(50)),
              child: SingleChildScrollView(
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
              )
          )
      ),
      body: currentScreen,
    );
  }


  ButtonRounded showType(int index) {
    return ButtonRounded(
      press: (){onItemTapped(index);},
      text: '${types[index]}',
      textColor: (selectedIndex == index)? Colors.white:Colors.black,
      backgroundColor: (selectedIndex == index)?Colors.black54:kBackground,
      isBorder: (selectedIndex == index)?false:true,
    );
  }
}
