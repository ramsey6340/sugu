import 'package:flutter/material.dart';
import 'package:sugu/datas/datas_current.dart';
import '../../../../../components/Next_button.dart';
import '../../../../../components/text_form_field_custom.dart';
import '../../../../../constantes.dart';
import '../choose_categories/choose_categories.dart';
import '../../../../../components/price_form_field_custom.dart';


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
              const Text("Nom du produit", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              //TextFormFieldCustom(hintText: 'Lenovo S430',textInputType: TextInputType.text,),
              TextFormFieldCustom(
                textInputType: TextInputType.text,
                hintText: 'Lenovo S430',
                fillColor: Colors.grey,
                focusBorderSideColor: Colors.transparent,
                borderSideColor: Colors.transparent,
                hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
                cursorColor: kRoundedCategoryColor,
                suffixColor: Colors.black54,
                inputTextColor: Colors.white,

                validator: (value){
                  if(value!.isEmpty){
                    return "Entrer le nom du produit";
                  }
                  else if(value.length<kLastNameMinLength){
                    return "Entrer un nom qui soit comprehenssible";
                  }
                  return null;
                },
              ),
            ],
          ),
          // 2
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Prix (fcfa)", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PriceFormFieldCustom(
                    hintText: '1000',
                    textInputType: TextInputType.number,
                    fillColor: Colors.grey,
                    focusBorderSideColor: Colors.transparent,
                    borderSideColor: Colors.transparent,
                    hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
                    cursorColor: kRoundedCategoryColor,
                    suffixColor: Colors.black54,
                    inputTextColor: Colors.white,

                    validator: (value){
                      if(value!.isEmpty){
                        return "Entrer le prix minimum";
                      }
                      return null;
                    },
                  ),
                  PriceFormFieldCustom(
                    hintText: '2000',
                    textInputType: TextInputType.number,
                    fillColor: Colors.grey,
                    focusBorderSideColor: Colors.transparent,
                    borderSideColor: Colors.transparent,
                    hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
                    cursorColor: kRoundedCategoryColor,
                    suffixColor: Colors.black54,
                    inputTextColor: Colors.white,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Entrer le prix maximum";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ]
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Description", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              //TextFormFieldCustom(hintText: 'Description', textInputType: TextInputType.multiline, maxLine: 3,),
              TextFormFieldCustom(
                textInputType: TextInputType.multiline,
                hintText: 'Description',
                maxLine: 4,
                fillColor: Colors.grey,
                focusBorderSideColor: Colors.transparent,
                borderSideColor: Colors.transparent,
                hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
                cursorColor: kRoundedCategoryColor,
                suffixColor: Colors.black54,
                inputTextColor: Colors.white,
              )
            ],
          ),
          // 3
          NextButton(
            text: 'Choisier des images',
            textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            press: (){},
            color: kSecondaryColor,
          ),
          const SizedBox(height: 20,),
          NextButton(
            text: 'Choisier des catégories',
            textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            color: Colors.green,
            press: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=> ChooseCategories(
                          listGlobalCat: currentStore.globalCat.toList(),
                        )
                    )
                );
              },
          ),
        ],
      ),
    );
  }
}