import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:flutter/material.dart';

import '../../../../components/Next_button.dart';
import '../../../../constantes.dart';
import '../../../../datas/global_category.dart';
import '../../../../size_config.dart';
import '../../../main_screen.dart';


class LocationAdditionalInfo extends StatefulWidget {
  static String routeName = 'location_additional_info';
  const LocationAdditionalInfo({Key? key}) : super(key: key);

  @override
  State<LocationAdditionalInfo> createState() => _LocationAdditionalInfoState();
}

class _LocationAdditionalInfoState extends State<LocationAdditionalInfo> {
  final formKey = GlobalKey<FormState>();

  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text("Inscription"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(18)
        ),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text("Quelle est vôtre localisation ?", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(height: getProportionateScreenHeight(50),),
                CountryStateCityPicker(
                  country: country,
                  state: state,
                  city: city,
                  countryDecoration: getLocationDecoration('pays'),
                  stateDecoration: getLocationDecoration('région'),
                  cityDecoration: getLocationDecoration('localisation'),
                  space: 25,
                  textStyle: const TextStyle(color: Colors.white),
                  countryValidator: (city){
                    if(city!.isEmpty){
                      return "Sélectionner votre pays";
                    }
                    return null;
                  },
                  stateValidator: (state){
                    if(state!.isEmpty){
                      return "Sélectionner votre région";
                    }
                    return null;
                  },
                  cityValidator: (city){
                    if(city!.isEmpty){
                      return "Sélectionner votre localisation";
                    }
                    return null;
                  },
                ),
                SizedBox(height: getProportionateScreenHeight(45),),
                NextButton(
                  color: kRoundedCategoryColor,
                  textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  text: 'Continuer',
                  press: (){
                    if(formKey.currentState!.validate()){
                      formKey.currentState!.save();
                      // si tout est ok on peut maintenant afficher la page succès
                      Navigator.pushNamedAndRemoveUntil(context, MainScreen.routeName, (route) => false);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration getLocationDecoration(String locationLabel){
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      filled: true,
      fillColor: Colors.grey,
      suffixIcon: const Icon(Icons.arrow_drop_down, color: Colors.black54,),
      hintText: 'Sélectionner le $locationLabel',
      hintStyle: TextStyle(fontSize: 14, color: Colors.white.withOpacity(kTextFieldOpacity)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color:Colors.transparent)
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.transparent,)
      ),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.transparent,)
      ),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.transparent,)
      ),
    );
  }
}
