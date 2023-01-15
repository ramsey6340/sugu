import 'package:flutter/material.dart';

import '../constantes.dart';
import '../datas/datas_current.dart';
import '../datas/message_data.dart';
import 'message_bubble.dart';


/// Cet Widget permet de lister les messages entre 2 utilisateurs ou les messages dans un groupe

class BuildListMessage extends StatefulWidget
{
  const BuildListMessage({Key? key}) : super(key: key);

  @override
  State<BuildListMessage> createState() => _BuildListMessageState();
}

class _BuildListMessageState extends State<BuildListMessage> {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      reverse: true,
      itemCount: messages.length,
      itemBuilder: (context, index){
        final item = messages[index];
        return MessageBubble(
          text: item.content,
          textStyle: const TextStyle(color: Colors.white),
          isSender: (item.senderId==currentSeller.sellerId)?true:false,
          color: (item.senderId==currentSeller.sellerId)?kPrimaryColor:Colors.black38,
          tail: true,
          sent: true,
        );
      },
    );
  }
}



