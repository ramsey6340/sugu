import 'package:flutter/material.dart';
import '../../components/bottom_nav_bar_cart.dart';
import '../../models/cart.dart';
import 'components/body.dart';


class CartScreen extends StatelessWidget {
  static String routeName = '/cart';
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Cart> carts = ModalRoute.of(context)?.settings.arguments as List<Cart>;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text("Panier", style: TextStyle(color: Colors.black),),
            Text("${carts.length} commandes", style: Theme.of(context).textTheme.caption),
          ],
        ),
      ),
      body: Body(carts: carts,),
      bottomNavigationBar: BottomNavBarCart(),
    );
  }
}
