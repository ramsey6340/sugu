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
        title: const Text("Inbox"),
      ),
      body: ListMessages(),
    );
  }


}
