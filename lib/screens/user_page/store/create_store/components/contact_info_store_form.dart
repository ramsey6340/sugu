import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../../../../components/Next_button.dart';
import '../../../../../components/phone_form_field_custom.dart';
import '../../../../../components/text_form_field_custom.dart';
import '../../../../../size_config.dart';
import '../create_store_screen.dart';


class ContactInfoStoreForm extends StatefulWidget {
  const ContactInfoStoreForm({Key? key}) : super(key: key);

  @override
  State<ContactInfoStoreForm> createState() => _ContactInfoStoreFormState();
}

class _ContactInfoStoreFormState extends State<ContactInfoStoreForm> {
  final formKey = GlobalKey<FormState>();
  String? passwordError = '';
  String? emailError = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          const Text("Quelle sont les contctes de la boutique ?", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
          SizedBox(height: getProportionateScreenHeight(50),),
          PhoneFormFieldCustom(
            hintText: 'numéro de téléphone 1',
            fillColor: Colors.grey,
            focusBorderSideColor: Colors.transparent,
            borderSideColor: Colors.transparent,
            hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
            cursorColor: kRoundedCategoryColor,
            inputTextColor: Colors.white,
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          PhoneFormFieldCustom(
            hintText: 'numéro de téléphone 2',
            fillColor: Colors.grey,
            focusBorderSideColor: Colors.transparent,
            borderSideColor: Colors.transparent,
            hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
            cursorColor: kRoundedCategoryColor,
            inputTextColor: Colors.white,
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          TextFormFieldCustom(
            textInputType: TextInputType.emailAddress,
            hintText: 'email',
            fillColor: Colors.grey,
            focusBorderSideColor: Colors.transparent,
            borderSideColor: Colors.transparent,
            hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
            cursorColor: kRoundedCategoryColor,
            suffixColor: Colors.black54,
            inputTextColor: Colors.white,
            errorText: emailError,
          ),

          SizedBox(height: getProportionateScreenHeight(30)),
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
                        builder: (context) => CreateStoreScreen(storeFormType: StoreFormType.location,)
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
