import 'package:flutter/material.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({Key? key, required this.icon_data, required this.press,}):super(key: key);
  final IconData icon_data;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
          ),
        ),
        child: Icon(icon_data, color: Colors.black,size: 30,),
      ),
    );
  }
}