import 'package:flutter/material.dart';
import '../../../components/next_interaction.dart';
import '../../../components/profile_img.dart';
import '../../../constantes.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ProfileImg(profileImg: 'assets/images/Profile Image.png',),
            SizedBox(height: 50,),
            NextInteraction(icon: Icons.account_circle, text: 'Mon compte',),
            NextInteraction(icon: Icons.notifications_none_rounded, text: 'Notifications',),
            NextInteraction(icon: Icons.settings, text: 'Parametres',),
            NextInteraction(icon: Icons.help, text: 'Aide',),
            NextInteraction(icon: Icons.logout, text: 'Deconnexion',),
          ],
        ),
      ),
    );
  }
}
