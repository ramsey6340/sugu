import 'package:flutter/material.dart';
import '../../../../../main_screen.dart';
import 'components/body.dart';
import '../../../../../../../models/seller.dart';


class Account extends StatelessWidget {
  static String routeName = 'account';
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final seller = ModalRoute.of(context)?.settings.arguments as Seller;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pushAndRemoveUntil(
                context, MaterialPageRoute(builder: (context) => MainScreen(index: 4,)), (route) => false
            );
          },
        ),
        title: const Text("Compte"),
      ),
      body: Body(seller: seller,),
    );
  }
}
