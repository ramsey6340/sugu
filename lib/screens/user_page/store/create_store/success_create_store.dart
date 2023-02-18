import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'package:sugu/screens/main_screen.dart';

import '../../../../CRUD/read.dart';
import '../../../../components/Next_button.dart';
import '../../../../components/form_image.dart';
import '../../../../datas/datas_current.dart';
import '../../../../datas/seller_data.dart';
import '../../../../size_config.dart';


class SuccessCreateStore extends StatelessWidget {
  static String routeName = 'success-create-store';
  const SuccessCreateStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBarColor,
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            children: [
              const Text("Félicitation", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),),
              const Text(
                "Votre boutique est maintenant ouverte, commencer dès maintenant à poster vos produits pour gagner des clients.",
                style: TextStyle(color: Colors.white,  fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              const FormImage(
                imageUrl: "assets/images/Opened-store-success.png",
                width: 350,
                height: 350,
              )
              /*Image.asset(
                "assets/images/Opened-store-success.png",
                width: getProportionateScreenWidth(350),
                height: getProportionateScreenHeight(350),
              )*/,
              const SizedBox(height: 10,),
              NextButton(
                borderRadius: 5,
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                color: kRoundedCategoryColor,
                textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                text: 'Continuer',
                press: (){
                  Read read = Read();
                  currentSeller.setSeller = sellers[0];
                  currentStore.setStore = read.getStoreWithSeller(sellerId: currentSeller.sellerId)!;
                  Navigator.pushAndRemoveUntil(
                      context, MaterialPageRoute(builder: (context)=> MainScreen(index: 2,)
                  ), (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
