import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sugu/components/next_button.dart';
import '../constantes.dart';
import '../size_config.dart';


class BottomNavBarCart extends StatelessWidget {
  const BottomNavBarCart({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenHeight(20)
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                offset: Offset(0, -15),
                color: Color(0xFFDADADA).withOpacity(0.15)
            ),
          ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(getProportionateScreenHeight(15)),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset('assets/icons/receipt.svg'),
              ),
              Spacer(),
              Text("add voucher code", style: TextStyle(color: Colors.black),),
              Icon(Icons.navigate_next, size: 16,)
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Total(fcfa):\n',
                  children: [
                    TextSpan(text: '50000')
                  ]
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(190),
                  child: NextButton(text: 'Check out', press: (){})
              ),
            ],
          ),
        ],
      ),
    );
  }
}