import 'package:sugu/constantes.dart';

class Notification {
  final NotificationType notificationType;
  final String title;
  final String content;

  Notification({
    required this.notificationType,
    required this.title,
    required this.content,
  });
}