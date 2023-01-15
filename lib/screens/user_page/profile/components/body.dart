import 'package:flutter/material.dart';
import '../../../../components/next_interaction.dart';
import '../../../../components/profile_img.dart';
import '../../../../datas/datas_current.dart';


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
            ProfileImg(profileImg: currentStore.image, pressShowImg: (){}, pressModifImg: (){},),
            const SizedBox(height: 50,),
            NextInteraction(icon: Icons.account_circle, text: 'Mon compte', press: (){},),
            NextInteraction(icon: Icons.settings, text: 'Parametres', press: (){},),
            NextInteraction(icon: Icons.help, text: 'Aide', press: (){},),
            NextInteraction(icon: Icons.logout, text: 'Deconnexion', press: (){},),
          ],
        ),
      ),
    );
  }
}
