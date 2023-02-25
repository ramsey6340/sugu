import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sugu/datas/datas_current.dart';
import 'package:sugu/size_config.dart';
import '../../../../../components/Next_button.dart';
import '../../../../../constantes.dart';
import '../choose_categories/choose_categories.dart';
import 'package:image_picker/image_picker.dart';


class ProductAddForm extends StatefulWidget {
  const ProductAddForm({Key? key,}) : super(key: key);

  @override
  State<ProductAddForm> createState() => _ProductAddFormState();
}

class _ProductAddFormState extends State<ProductAddForm> {
  final formKey = GlobalKey<FormState>();
  File imageFile = File('');
  List<File>? multiImageFile;
  dynamic pickImageError;

  /// Selectionner une image en fonction de la source
  /// La source peut être la gallery ou le camera
  getImageFromGallery({required ImageSource source}) async {
    PickedFile pickedFile = (await ImagePicker().getImage(source: source))!;
    setState(() {
      imageFile = File(pickedFile.path);
    });
  }


  getMultiImageFromGallery({required ImageSource source}) async {
    List<PickedFile>? pickedMultiFile = await ImagePicker().getMultiImage();
    setState(() {
      if(pickedMultiFile!.isNotEmpty) {
        imageFile = File(pickedMultiFile.toList()[0].path);
      }
    });
  }


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
              const Text("Nom du produit", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Lenovo S430',
                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.8))
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Entrer le nom du produit";
                  }
                  else if(value.length<kLastNameMinLength){
                    return "Entrer un nom qui soit plus comprehenssible";
                  }
                  return null;
                },
              ),
            ],
          ),
          const SizedBox(height: 10,),
          // 2
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Prix (fcfa)", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.43,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: '1000',
                        prefixIcon: Icon(Icons.monetization_on, ),
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Entrer le prix minimum";
                        }
                        return null;
                      },
                    ),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.43,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: '1000',
                        prefixIcon: Icon(Icons.monetization_on, ),
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Entrer le prix minimum";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ]
          ),
          const SizedBox(height: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Description", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              //TextFormFieldCustom(hintText: 'Description', textInputType: TextInputType.multiline, maxLine: 3,),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(
                    hintText: 'Description',
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.8))
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Entrer une description";
                  }
                  return null;
                },
              ),
            ],
          ),
          const SizedBox(height: 10,),
          // 3
          NextButton(
            borderRadius: 5,
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(37), vertical: 8),
            text: 'Choisier des images',
            textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            press: (){
              // méthode qui va selectionner des images
              getImageFromGallery(source: ImageSource.gallery);
            },
            color: kSecondaryColor,
          ),
          const SizedBox(height: 20,),
          NextButton(
            borderRadius: 5,
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25), vertical: 8),
            text: 'Choisier des catégories',
            textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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

  // Visualuser une image
  Widget showImage() {
    if (imageFile != null) {
      return AlertDialog(
        content: Image.file(imageFile),
      );
    }
    else if(pickImageError != null) {
      return Text("Error $pickImageError");
    }
    else {
      return const Text("Aucune image selectionner");
    }
  }
}