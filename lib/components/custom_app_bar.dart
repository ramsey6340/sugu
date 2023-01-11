import 'package:flutter/material.dart';


class CustomAppBar {

  static AppBar customAppBar({Widget? leading, String? title, List<Widget>? actions}) {
    return AppBar(
      elevation: 1,
      centerTitle: true,
      leading: leading,
      title: Text(title!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black87),),
      actions: actions,
    );
  }
}