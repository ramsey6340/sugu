import 'package:flutter/material.dart';
import 'package:sugu/components/next_button.dart';
import 'package:sugu/components/phone_form_field_custom.dart';
import 'package:sugu/components/text_form_field_custom.dart';
import 'package:sugu/constantes.dart';

import '../../../../../../../../datas/profile_data_type.dart';


class ProfileModification extends StatelessWidget {
  const ProfileModification({Key? key, required this.profileDataType, required this.data}) : super(key: key);
  final String profileDataType;
  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: IconButton(
          icon: const Text("Annuler", style: TextStyle(color: Colors.white),),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: const Text("Modification"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(profileDataType, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            (profileDataType == ProfileDataType.identifiant)?PhoneFormFieldCustom(initialValue: data,):(profileDataType==ProfileDataType.motDePasse)?TextFormFieldCustom(initialValue: data, isPassword: true,):TextFormFieldCustom(initialValue: data,),
            const SizedBox(height: 50,),
            NextButton(text: "Enregistrer", press: (){}, color: kRoundedCategoryColor,)
          ],
        ),
      ),
    );
  }
}
