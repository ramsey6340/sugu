import 'package:flutter/material.dart';
import '../../../../components/next_interaction.dart';
import '../../../../components/profile_img.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 10,),
            ProfileImg(profileImg: 'assets/images/Profile Image.png', pressShowImg: (){}, pressModifImg: (){},),
            const SizedBox(height: 50,),
            NextInteraction(icon: Icons.account_circle, text: 'Mon compte', press: (){},),
            NextInteraction(icon: Icons.notifications_none_rounded, text: 'Notifications', press: (){},),
            NextInteraction(icon: Icons.settings, text: 'Parametres', press: (){},),
            NextInteraction(icon: Icons.help, text: 'Aide', press: (){},),
            NextInteraction(icon: Icons.logout, text: 'Deconnexion', press: (){},),
          ],
        ),
      ),
    );
  }
}
