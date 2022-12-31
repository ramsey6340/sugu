import 'package:flutter/material.dart';
import '../../../components/list_title_cart.dart';
import '../../../models/cart.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.carts}) : super(key: key);

  final List<Cart> carts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: carts.length,
      itemBuilder: (context, index) => ListTitleCart(cart: carts[index]),
    );
  }
}


