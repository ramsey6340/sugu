import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../../../../../../../datas/profile_data_type.dart';
import 'profile_modification.dart';
import '../../../../../../../../components/next_interaction.dart';
import '../../../../../../../../components/profile_img.dart';
import '../../../../../../../../datas/datas_current.dart';
import '../../../../../../../../models/seller.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.seller}) : super(key: key);
  final Seller seller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            ProfileImg(profileImg: currentStore.image, pressShowImg: (){},pressModifImg: (){}, showIconModif: true,),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NextInteraction(
                  leading: const Text("Prenom:", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 18),),
                  text: seller.firstName,
                  press: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ProfileModification(
                            profileDataType: ProfileDataType.prenom,
                            data: seller.firstName,
                          );
                        })
                    );
                  },
                  radiusTopLeft: 0,
                  radiusBottomLeft: 0,
                  radiusBottomRight: 0,
                  radiusTopRight: 0,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NextInteraction(
                  leading: const Text("Nom:", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 18),),
                  text: seller.lastName,
                  press: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ProfileModification(
                            profileDataType: ProfileDataType.nom,
                            data: seller.lastName,
                          );
                        })
                    );
                  },
                    radiusTopLeft: 0,
                    radiusBottomLeft: 0,
                    radiusBottomRight: 0,
                    radiusTopRight: 0,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NextInteraction(
                  leading: const Text("Date de naissance:", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 18),),
                  text: seller.birthDay,
                  press: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ProfileModification(
                            profileDataType: ProfileDataType.dateDeNaissance,
                            data: seller.birthDay,
                          );
                        })
                    );
                  },
                  radiusTopLeft: 0,
                  radiusBottomLeft: 0,
                  radiusBottomRight: 0,
                  radiusTopRight: 0,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NextInteraction(
                  leading: const Text("Identifiant:", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 18),),
                  text: '72196636',
                  press: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ProfileModification(
                            profileDataType: ProfileDataType.identifiant,
                            data: '72196636',
                          );
                        })
                    );
                  },
                  radiusTopLeft: 0,
                  radiusBottomLeft: 0,
                  radiusBottomRight: 0,
                  radiusTopRight: 0,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NextInteraction(
                  leading: const Text("Mot de passe:", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 18),),
                  text: '******',
                  press: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ProfileModification(
                            profileDataType: ProfileDataType.motDePasse,
                            data: 'vO1l@cte',
                          );
                        })
                    );
                  },
                  radiusTopLeft: 0,
                  radiusBottomLeft: 0,
                  radiusBottomRight: 0,
                  radiusTopRight: 0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
