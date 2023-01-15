import 'package:sugu/datas/seller_data.dart';

import '../models/message.dart';

List<Message> messages = [
  Message(
      idMessage: "1",
      senderId: sellers[0].sellerId,
      receiverId: sellers[1].sellerId,
      datePost: "09/09/2023",
      content: "Vous avez des chaussures NIKE ?",
      typeMessage: "text",
  ),
  Message(
    idMessage: "2",
    senderId: sellers[1].sellerId,
    receiverId: sellers[0].sellerId,
    datePost: "09/10/2023",
    content: "Oui il y'en a",
    typeMessage: "text",
  ),
  Message(
    idMessage: "3",
    senderId: sellers[0].sellerId,
    receiverId: sellers[1].sellerId,
    datePost: "09/11/2023",
    content: "J'ai besoin de 10 pairs",
    typeMessage: "text",
  ),
];