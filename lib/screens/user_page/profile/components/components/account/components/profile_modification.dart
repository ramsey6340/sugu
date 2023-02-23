import 'package:flutter/material.dart';
import 'package:sugu/components/next_button.dart';
import 'package:sugu/components/phone_form_field_custom.dart';
import 'package:sugu/components/text_form_field_custom.dart';
import 'package:sugu/constantes.dart';

import '../../../../../../../../datas/profile_data_type.dart';


class ProfileModification extends StatefulWidget {
  const ProfileModification({Key? key, required this.profileDataType, required this.data}) : super(key: key);
  final String profileDataType;
  final dynamic data;

  @override
  State<ProfileModification> createState() => _ProfileModificationState();
}

class _ProfileModificationState extends State<ProfileModification> {
  bool obscureText = true;

  void onTapHiddenButton(){
    setState(() {
      obscureText = !obscureText;
    });
  }

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
            Text(widget.profileDataType, style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            (widget.profileDataType == ProfileDataType.identifiant)?
            PhoneFormFieldCustom(initialValue: widget.data,):
            (widget.profileDataType==ProfileDataType.motDePasse)?
            TextFormField(
              initialValue: widget.data,
              obscureText: obscureText,
              decoration: InputDecoration(
                suffixIcon:(obscureText)?
                IconButton(
                  icon: Icon(
                    Icons.visibility_outlined,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  onPressed: (){onTapHiddenButton();},
                  enableFeedback: false,
                ):
                IconButton(
                    icon: Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.black.withOpacity(0.8),
                    ),
                    onPressed: (){onTapHiddenButton();},
                    enableFeedback: false
                )
              ),
            ):
            TextFormField(
              initialValue: widget.data,
            ),
            const SizedBox(height: 50,),
            NextButton(
              borderRadius: 5,
              padding: EdgeInsets.symmetric(horizontal: 80),
              text: "Enregistrer",
              press: (){},
              color: kRoundedCategoryColor,
            )
          ],
        ),
      ),
    );
  }
}
