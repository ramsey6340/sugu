import 'package:flutter/material.dart';
import '../../../../components/Next_button.dart';
import '../../../../components/phone_form_field_custom.dart';
import '../../../../components/profile_img.dart';
import '../../../../components/text_form_field_custom.dart';
import '../../../../models/store.dart';
import '../../store/components/choose_categories/choose_categories.dart';


class StoreForm extends StatefulWidget {
  const StoreForm({Key? key, required this.store}) : super(key: key);
  final Store store;

  @override
  State<StoreForm> createState() => _StoreFormState();
}

class _StoreFormState extends State<StoreForm> {
  final keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: Column(
        children: [
          // 0
          ProfileImg(profileImg: widget.store.image, pressShowImg: (){}, pressModifImg: (){},),
          const SizedBox(height: 10,),
          // 1
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Nom", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              TextFormFieldCustom(
                textInputType: TextInputType.text,
                initialValue: widget.store.name,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          // 2
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Adresse", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              TextFormFieldCustom(
                textInputType: TextInputType.text,
                initialValue: widget.store.morePrecision,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          // 3
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Email", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              TextFormFieldCustom(
                textInputType: TextInputType.emailAddress,
                initialValue: widget.store.email,
              ),
            ],
          ),
          const SizedBox(height: 10,),

          // 4
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Téléphone 1", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              PhoneFormFieldCustom(initialValue: widget.store.numTel1.countryISOCode,)
            ],
          ),
          const SizedBox(height: 10,),

          // 4
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Téléphone 2", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              PhoneFormFieldCustom(initialValue: widget.store.numTel2?.countryISOCode,)
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
                initialValue: widget.store.description,
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
                        listGlobalCat: widget.store.globalCat,
                        isStoreModification: true,
                      ))
              );
            },
          ),
        ],
      ),
    );
  }
}
