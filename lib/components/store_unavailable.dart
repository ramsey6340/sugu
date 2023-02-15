import 'package:flutter/material.dart';
import '../constantes.dart';
import '../size_config.dart';
import 'Next_button.dart';


class StoreUnavailable extends StatelessWidget {
  const StoreUnavailable({Key? key, this.onPressed, required this.message,}) : super(key: key);
  final String message;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height*0.4,
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      message,
                      style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                    ),
                    SizedBox(height: getProportionateScreenHeight(30),),
                    NextButton(text: "Ouvrir ma boutique", press: onPressed, color: kRoundedCategoryColor, textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}