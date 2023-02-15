import 'package:sugu/constantes.dart';

import '../models/notification.dart';

List<Notification> notifications = [
 Notification(
     notificationType: NotificationType.info,
     title: "Nouveau produit",
     content: "Sank Shop vient d'ajouter de nouvelle chaussure pour homme, soyez le premier à le voir"
 ),

  Notification(
      notificationType: NotificationType.promotion,
      title: "Promotion",
      content: "NoulDi fait une promotion de 50% sur ses sacs à main, n'attendez plus !"
  ),

  Notification(
      notificationType: NotificationType.abonnement,
      title: "Attention !",
      content: "Votre abonnement vas expirer dans 2 jours.\n Penser à vous réabonner pour que vos produits soient toujour accessible par les clients"
  ),
];