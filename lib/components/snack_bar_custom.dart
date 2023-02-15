import 'package:flutter/material.dart';

class SnackBarCustom {

  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            backgroundColor: Colors.grey,
            content: Text(message,
                style: const TextStyle(color: Colors.white,fontSize: 16.0))
        )
    );
  }
}