import 'package:flutter/material.dart';
import '../../../../components/Next_button.dart';
import '../../../../components/text_form_field_custom.dart';
import '../../../../constantes.dart';
import '../../../../datas/profile_data_type.dart';
import '../../../../size_config.dart';
import 'location_additional_info.dart';

class ProfileAdditionalInfo extends StatefulWidget {

  const ProfileAdditionalInfo({Key? key}) : super(key: key);

  @override
  State<ProfileAdditionalInfo> createState() => _ProfileAdditionalInfoState();
}

class _ProfileAdditionalInfoState extends State<ProfileAdditionalInfo> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormFieldCustom(
            textInputType: TextInputType.text,
            hintText: ProfileDataType.prenom,
            fillColor: Colors.grey,
            focusBorderSideColor: Colors.transparent,
            borderSideColor: Colors.transparent,
            hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
            cursorColor: kRoundedCategoryColor,
            suffixColor: Colors.black54,
            inputTextColor: Colors.white,

            validator: (value){
              if(value!.isEmpty) {
                return "Entrer votre prénom";
              }
              else if(value.length<kFirstNameMinLength){
                return "Entrer votre prénom";
              }
              return null;
            },
          ),
          TextFormFieldCustom(
            textInputType: TextInputType.text,
            hintText: ProfileDataType.nom,
            fillColor: Colors.grey,
            focusBorderSideColor: Colors.transparent,
            borderSideColor: Colors.transparent,
            hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
            cursorColor: kRoundedCategoryColor,
            suffixColor: Colors.black54,
            inputTextColor: Colors.white,

            validator: (value){
              if(value!.isEmpty){
                return "Entrer votre nom";
              }
              else if(value.length<kLastNameMinLength){
                return "Entrer votre nom";
              }
              return null;
            },
          ),
          TextFormFieldCustom(
            textInputType: TextInputType.datetime,
            hintText: '${ProfileDataType.dateDeNaissance}: JJ/MM/AAAA',
            fillColor: Colors.grey,
            focusBorderSideColor: Colors.transparent,
            borderSideColor: Colors.transparent,
            hintTextColor: Colors.white.withOpacity(kTextFieldOpacity),
            cursorColor: kRoundedCategoryColor,
            suffixColor: Colors.black54,
            inputTextColor: Colors.white,

            validator: (value){
              if(value!.isEmpty){
                return "Entrer votre date de naissance";
              }
              else if(!birthDayRegExp.hasMatch(value)){
                return "La date doit être de la forme JJ/MM/AAAA";
              }
              else if(birthDayRegExp.hasMatch(value)){
                final dateSplit = value.split("/");
                int day = int.parse(dateSplit[0]);
                int month = int.parse(dateSplit[1]);
                int year = int.parse(dateSplit[2]);
                final currentDate = DateTime.now();
                int currentYear = currentDate.year;
                int oldYear = currentYear-year;
                if(day<1 || day>31){
                  return "Le jour est incorrecte";
                }
                else if(month<1 || month>12){
                  return "Le mois est incorrecte";
                }
                else if(month>=1 && month<=12){
                  switch(month){
                    case 2:
                      if(day>29){
                        return "jour ou mois incorrecte";
                      }
                      break;
                    case 4:
                      if(day>30){
                        return "jour ou mois incorrecte";
                      }
                      break;
                    case 6:
                      if(day>30){
                        return "jour ou mois incorrecte";
                      }
                      break;
                    case 9:
                      if(day>30){
                        return "jour ou mois incorrecte";
                      }
                      break;
                    case 11:
                      if(day>30){
                        return "jour ou mois incorrecte";
                      }
                      break;
                  }
                }
                else if(oldYear<12){
                  return "Vous ête trop jeune";
                }
                else if(oldYear>150){
                  return "Vous ête trop âgé";
                }
              }
              return null;
            },
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          NextButton(
            borderRadius: 5,
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(100), vertical: getProportionateScreenHeight(10)),
            color: kRoundedCategoryColor,
            textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            text: 'Continuer',
            press: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
                // si tout est ok on peut maintenant afficher la page succès
                Navigator.pushNamed(context, LocationAdditionalInfo.routeName);
              }
            },
          ),
        ],
      ),
    );
  }
}
