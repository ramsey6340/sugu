import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../../../../components/Next_button.dart';
import '../../../../../components/text_form_field_custom.dart';
import '../../../../../size_config.dart';
import '../create_store_screen.dart';


class ProfileStoreForm extends StatefulWidget {
  const ProfileStoreForm({Key? key}) : super(key: key);

  @override
  State<ProfileStoreForm> createState() => _ProfileStoreFormState();
}

class _ProfileStoreFormState extends State<ProfileStoreForm> {
  final formKey = GlobalKey<FormState>();
  String? passwordError = '';
  String? emailError = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          const Text("Dite nous un peu sur votre boutique", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
          SizedBox(height: getProportionateScreenHeight(50),),
          TextFormFieldCustom(
            textInputType: TextInputType.emailAddress,
            hintText: 'Ex: Guinta 2',
            fillColor: Colors.grey,
            focusBorderSideColor: Colors.transparent,
            borderSideColor: Colors.transparent,
            hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
            cursorColor: kRoundedCategoryColor,
            suffixColor: Colors.black54,
            inputTextColor: Colors.white,
            errorText: emailError,
          ),

          SizedBox(height: getProportionateScreenHeight(20)),

        TextFormFieldCustom(
          textInputType: TextInputType.emailAddress,
          hintText: 'Près de ...',
          fillColor: Colors.grey,
          focusBorderSideColor: Colors.transparent,
          borderSideColor: Colors.transparent,
          hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
          cursorColor: kRoundedCategoryColor,
          suffixColor: Colors.black54,
          inputTextColor: Colors.white,
          errorText: emailError,
        ),

        SizedBox(height: getProportionateScreenHeight(20)),
          TextFormFieldCustom(
            textInputType: TextInputType.emailAddress,
            hintText: 'Description',
            maxLine: 3,
            fillColor: Colors.grey,
            focusBorderSideColor: Colors.transparent,
            borderSideColor: Colors.transparent,
            hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
            cursorColor: kRoundedCategoryColor,
            suffixColor: Colors.black54,
            inputTextColor: Colors.white,
            errorText: emailError,
          ),

          SizedBox(height: getProportionateScreenHeight(20)),
          // Bouton de validation
          NextButton(
            borderRadius: 5,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            color: kRoundedCategoryColor,
            textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            text: 'Continuer',
            press: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
                // si tout est ok on peut maintenant afficher la page succès
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateStoreScreen(storeFormType: StoreFormType.contact,)
                    )
                );
              }
            },
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
        ],
      ),
    );
  }
}
