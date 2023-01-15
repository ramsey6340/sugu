import 'package:flutter/material.dart';
import '../constantes.dart';
import 'message_bar.dart';

/// Widget qui permet la saisie de texte, l'envoie de message, de photo, et de document

class SendMessageBar extends StatelessWidget {
  SendMessageBar({Key? key}) : super(key: key);

  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Divider(color: Colors.black, height: 0,),
        MessageBar(
          onSend: (newMessage) {
            print(newMessage);
            /*
            final message = Message(
              idMessage: '',
              senderId: currentSeller.sellerId,
              receiverId: sellers[1].sellerId,
              datePost: DateTime.now().toString(),
              content: newMessage,
              typeMessage: "text",
              urlImage: '',
            );*/
          },
          sendButtonColor: kPrimaryColor,
          messageBarColor: kBackground,
          actions: [
            InkWell(
              child: const Icon(
                Icons.add,
                color: kPrimaryColor,
                size: 24,
              ),
              onTap: () {},
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: InkWell(
                child: const Icon(
                  Icons.photo,
                  color: Colors.grey,
                  size: 24,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }


}