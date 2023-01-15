import 'package:flutter/material.dart';
import 'components/body.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: const Text("Messages", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black87),),
      ),
      body: Body(),
    );
  }

}
