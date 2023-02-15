import 'package:flutter/material.dart';
import '../constantes.dart';


class NotificationBubble extends StatelessWidget {
  const NotificationBubble({
    Key? key,
    required this.title,
    required this.content,
    required this.onExpansionChanged,
    required this.onCloseButtonPressed,
    this.isSelected=false,
    this.notificationType=NotificationType.info,
    this.leadingIcon,
    this.isRead=false,
  }) : super(key: key);

  final String title;
  final String content;
  final Function(bool)? onExpansionChanged;
  final bool isSelected;
  final NotificationType notificationType;
  final Function()? onCloseButtonPressed;
  final Widget? leadingIcon;
  final bool isRead;


  @override
  Widget build(BuildContext context) {
    return Material(
          elevation: 2,
          color: (isRead)?Colors.white:kFourColor,
          borderRadius: BorderRadius.circular(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: ExpansionTile(
              backgroundColor: (isRead)?kFourColor:Colors.white,
              expandedAlignment: Alignment.topLeft,
              tilePadding: const EdgeInsets.only(left: 20, ),
              childrenPadding: const EdgeInsets.only(left: 77, right: 10, bottom: 10,),

              onExpansionChanged: onExpansionChanged,
              leading: getLeadingIcon(notificationType),
              title: Text(title, style: TextStyle(fontSize: 18, color: (notificationType == NotificationType.abonnement)?Colors.red:(notificationType == NotificationType.promotion)?kRoundedCategoryColor:Colors.black, fontWeight: FontWeight.bold),),
              subtitle: (isSelected)?null:Text(content, style: const TextStyle(color: kTextColor),overflow: TextOverflow.ellipsis,),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 0,right: 10,),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.grey, size: 15,),
                      onPressed: onCloseButtonPressed,
                    ),
                  ],
                ),
              ),
              children: [
                Text(content, style: const TextStyle(color: kTextColor),)
              ],
      ),
          ),
    );
  }

  Widget getLeadingIcon(NotificationType notificationType) {
    late final Icon leading;
    switch (notificationType){
      case NotificationType.info:
        leading = Icon(Icons.info_outline, color: Colors.blue,);
        break;
      case NotificationType.promotion:
        leading = const Icon(Icons.sell, color: kRoundedCategoryColor,);
        break;
      case NotificationType.abonnement:
        leading = const Icon(Icons.notification_important_rounded, color: Colors.red,);
        break;
    }
    return leading;
  }


  /*
  Material(
      elevation: 2,
      child: ExpansionTile(
        onExpansionChanged: onExpansionChanged,
        title: Text(title, style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
        subtitle: subTitle,
        expandedAlignment: Alignment.topLeft,
        childrenPadding: EdgeInsets.only(left: 10, right: 10, bottom: 10,),
        trailing: (isSelected)?Icon(Icons.expand_less, color: Colors.black,):Icon(Icons.expand_more, color: Colors.black),
        children: [
          Text(content, style: TextStyle(color: kTextColor),)
        ],
      )
    )
   */
}












