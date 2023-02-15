import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'components/chat/list_messages.dart';


class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: kAppBarColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text("Inbox", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,),),
      ),
      body: ListMessages(),
    );
  }


}
