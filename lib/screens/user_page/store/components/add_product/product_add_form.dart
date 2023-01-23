import 'package:flutter/material.dart';
import '../../../../components/Next_button.dart';
import '../../../../constantes.dart';
import 'choose_categories.dart';
import 'text_form_field_custom.dart';
import 'price_form_field_custom.dart';
import 'categories_form_field_custom.dart';
import 'image_form_field_custom.dart';


class ProductAddForm extends StatefulWidget {
  const ProductAddForm({Key? key,}) : super(key: key);

  @override
  State<ProductAddForm> createState() => _ProductAddFormState();
}

class _ProductAddFormState extends State<ProductAddForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          // 1
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nom", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              TextFormFieldCustom(hintText: 'Lenovo S430',textInputType: TextInputType.text,),
            ],
          ),
          const SizedBox(height: 10,),
          // 2
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Prix (fcfa)", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PriceFormFieldCustom(hintText: '1000',textInputType: TextInputType.number,),
                  PriceFormFieldCustom(hintText: '2000',textInputType: TextInputType.number,),
                ],
              ),
            ]
          ),
          const SizedBox(height: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Description", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              TextFormFieldCustom(hintText: 'Description', textInputType: TextInputType.multiline, maxLine: 3,),
            ],
          ),
          const SizedBox(height: 20,),
          // 3
          NextButton(
            text: 'Choisier des images',
            press: (){},
            color: kSecondaryColor,),
          const SizedBox(height: 20,),
          NextButton(text: 'Choisier des catégories',
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (contex)=> ChooseCategories()));
              },
          ),
          /*
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Images", style: TextStyle(color: Colors.black, fontSize: 18)),
              const SizedBox(height: 10,),
              ImageFormFieldCustom(press: (){}),
            ],
          ),
          const SizedBox(height: 20,),
          // 4
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Catégories",  style: TextStyle(color: Colors.black, fontSize: 18)),
              SizedBox(height: 10,),
              CategoriesFormFieldCustom(),
            ],
          ),*/
        ],
      ),
    );
  }
}