import 'package:flutter/material.dart';
import '../../../datas/cart_data.dart';
import '../../cart/cart_screen.dart';
import 'notification_btn.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SearchField(),
        NotificationBtn(
            nb_notification: 0,
            icon_notification: Icons.shopping_cart_outlined,
            press: () => Navigator.pushNamed(context, CartScreen.routeName, arguments: carts)
        ),
        NotificationBtn(
            nb_notification: 3,
            icon_notification: Icons.notifications_none_rounded,
            press: (){}
        ),
      ],
    );
  }
}