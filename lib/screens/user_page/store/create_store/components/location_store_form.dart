import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:flutter/material.dart';
import '../../../../../components/Next_button.dart';
import '../../../../../constantes.dart';
import '../../../../../size_config.dart';
import '../success_create_store.dart';


class LocationStoreForm extends StatefulWidget {
  static String routeName = 'location_store_form';
  const LocationStoreForm({Key? key}) : super(key: key);

  @override
  State<LocationStoreForm> createState() => _LocationStoreFormState();
}

class _LocationStoreFormState extends State<LocationStoreForm> {
  final formKey = GlobalKey<FormState>();

  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text("Quelle est la localisation de la boutique ?", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
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
              borderRadius: 5,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
              color: kRoundedCategoryColor,
              textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              text: 'Continuer',
              press: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                  // si tout est ok on peut maintenant afficher la page succès
                  Navigator.pushNamed(context, SuccessCreateStore.routeName);
                }
              },
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
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
