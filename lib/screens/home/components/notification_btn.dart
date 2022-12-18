import 'package:flutter/material.dart';

import '../../../constantes.dart';
import '../../../size_config.dart';

class NotificationBtn extends StatelessWidget {
  const NotificationBtn({Key? key, required this.nb_notification, required this.icon_notification, required this.press}) : super(key: key);

  final int nb_notification;
  final IconData icon_notification;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press as void Function()?,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
          children: [
            Container(
              height: SizeConfig.screenWidth * 0.10,
              width: SizeConfig.screenWidth * 0.10,
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon_notification),
            ),
            if (nb_notification != 0)
              Positioned(
                right: 0,
                //top: -3,
                child: Container(
                  width: getProportionateScreenWidth(18),
                  height: getProportionateScreenHeight(18),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle
                  ),
                  child: Text('$nb_notification',
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.2,
                      fontSize: getProportionateScreenWidth(10),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ]
      ),
    );
  }
}
