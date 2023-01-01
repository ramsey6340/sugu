import 'package:flutter/material.dart';
import '../constantes.dart';


class NextInteraction extends StatelessWidget {
  const NextInteraction({Key? key, required this.icon, required this.text,}) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFFF5F6F9),
              borderRadius: BorderRadius.circular(10)
          ),
          child: ListTile(
            leading: Icon(icon, color: kPrimaryColor,),
            title: Text(text),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
      ),
    );
  }
}