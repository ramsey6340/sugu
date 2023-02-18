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
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 0)
                  ),
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text("Boutique fermée", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),),
                    Text(
                      message,
                      style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal),textAlign: TextAlign.center,
                    ),
                    SizedBox(height: getProportionateScreenHeight(30),),
                    NextButton(
                      borderRadius: 5,
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                      text: "Ouvrir",
                      press: onPressed,
                      color: kRoundedCategoryColor,
                      textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}