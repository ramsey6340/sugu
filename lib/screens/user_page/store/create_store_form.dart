import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';

import '../../../components/Next_button.dart';
import '../../../components/phone_form_field_custom.dart';
import '../../../components/text_form_field_custom.dart';
import 'components/choose_categories/choose_categories.dart';


class CreateStoreForm extends StatefulWidget {
  static String routeName = 'create_store_form';
  const CreateStoreForm({Key? key}) : super(key: key);

  @override
  State<CreateStoreForm> createState() => _CreateStoreFormState();
}

class _CreateStoreFormState extends State<CreateStoreForm> {
  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text("Ouvrir ma boutique"),
      ),
     /* body: SafeArea(
        child: Form(
          key: keyForm,
          child: Column(
            children: [
              // 0
              //ProfileImg(profileImg: widget.store.image, pressShowImg: (){}, pressModifImg: (){},),
              const SizedBox(height: 10,),
              // 1
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nom", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  TextFormFieldCustom(
                    textInputType: TextInputType.text,
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              // 2
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Adresse", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  TextFormFieldCustom(
                    textInputType: TextInputType.text,
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              // 3
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  TextFormFieldCustom(
                    textInputType: TextInputType.emailAddress,
                  ),
                ],
              ),
              const SizedBox(height: 10,),

              // 4
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Téléphone 1", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  PhoneFormFieldCustom()
                ],
              ),
              const SizedBox(height: 10,),

              // 4
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Téléphone 2", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  PhoneFormFieldCustom()
                ],
              ),
              const SizedBox(height: 10,),

              // 6
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Description", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  TextFormFieldCustom(
                    textInputType: TextInputType.multiline,
                    maxLine: 4,
                  ),
                ],
              ),
              const SizedBox(height: 30,),

              //8
              NextButton(
                text: 'Choisier des catégories',
                press: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex)=> ChooseCategories(
                            store: widget.store,
                            isStoreModification: true,
                          ))
                  );
                },
              ),

            ],
          ),
        ),
      ),*/
    );
  }
}
