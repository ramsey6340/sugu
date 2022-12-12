import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'package:sugu/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(20),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: SizeConfig.screenWidth * 0.6,
                      //height: SizeConfig.screenHeight * 0.07,
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration: searchBarDecoration,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: SizeConfig.screenWidth * 0.10,
                          width: SizeConfig.screenWidth * 0.10,
                          decoration: BoxDecoration(
                           color: kSecondaryColor.withOpacity(0.1),
                           shape: BoxShape.circle,
                          ),
                         child: Icon(Icons.notifications_none_rounded,),
                        ),
                        Positioned(
                          right: 0,
                          //top: -3,
                          child: Container(
                            width: getProportionateScreenWidth(18),
                            height: getProportionateScreenHeight(18),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                      ]
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
