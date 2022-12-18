import 'package:flutter/material.dart';
import 'components/body.dart';


class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Body(),
    );
  }
}
