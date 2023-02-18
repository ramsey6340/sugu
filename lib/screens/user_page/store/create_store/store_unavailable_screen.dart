import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../../../components/Next_button.dart';
import '../../../../components/store_unavailable.dart';
import '../../../../components/text_form_field_custom.dart';
import 'create_store_screen.dart';


class StoreUnavalableScreen extends StatefulWidget {
  const StoreUnavalableScreen({Key? key, required this.typeUnavalableStore}) : super(key: key);
  final TypeUnavalableStore typeUnavalableStore;

  @override
  State<StoreUnavalableScreen> createState() => _StoreUnavalableScreenState();
}

class _StoreUnavalableScreenState extends State<StoreUnavalableScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        title: const Text("Boutique"),
      ),
      body: (widget.typeUnavalableStore == TypeUnavalableStore.noStoreExist)?StoreUnavailable(
        message: noStoreMessage,
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CreateStoreScreen(
                      storeFormType: StoreFormType.profile
                  )
              )
          );
        },
      ):(widget.typeUnavalableStore == TypeUnavalableStore.autoClosingStore)?StoreUnavailable(
        message: autoClosingStore,
        onPressed: (){
          showDialog(
              context: context,
              builder: (context) {
                return autoClosingStoreForm();
              }
          );
        },
      ):StoreUnavailable(
        message: expiredSubscriptionMessage,
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CreateStoreScreen(
                      storeFormType: StoreFormType.profile
                  )
              )
          );
        },
      ),
    );
  }

  Widget autoClosingStoreForm() {
    return Container(
      margin: EdgeInsets.only(top: 100, left: 12, right: 12, bottom: 200),
      child: Material(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: SingleChildScrollView(
            child: Form(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    TextFormFieldCustom(
                      textInputType: TextInputType.emailAddress,
                      hintText: 'Identifiant',
                      fillColor: Colors.grey,
                      focusBorderSideColor: Colors.transparent,
                      borderSideColor: Colors.transparent,
                      hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
                      cursorColor: kRoundedCategoryColor,
                      suffixColor: Colors.black54,
                      inputTextColor: Colors.white,
                    ),
                    SizedBox(height: 20,),
                    TextFormFieldCustom(
                      isPassword: true,
                      textInputType: TextInputType.emailAddress,
                      hintText: 'Mot de passe',
                      fillColor: Colors.grey,
                      focusBorderSideColor: Colors.transparent,
                      borderSideColor: Colors.transparent,
                      hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
                      cursorColor: kRoundedCategoryColor,
                      suffixColor: Colors.black54,
                      inputTextColor: Colors.white,
                    ),
                    const SizedBox(height: 30,),
                    NextButton(
                      borderRadius: 5,
                      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 8),
                      color: kRoundedCategoryColor,
                      textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      text: 'Continuer',
                      press: (){
                        if(formKey.currentState!.validate()){
                          formKey.currentState!.save();
                          // si tout est ok on peut maintenant afficher la page succès
                        }
                      },
                    ),
                    SizedBox(height: 20,),
                    Text("J'ai oublié mon mot de passe", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline, fontSize: 18),)
                  ],
                )
            ),
          ),
        )
      ),
    );
  }
}

