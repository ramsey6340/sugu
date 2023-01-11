import 'package:flutter/material.dart';


class NextPage extends StatelessWidget {
  const NextPage({Key? key, required this.name, required this.press, required this.leading,}) : super(key: key);
  final String name;
  final Widget leading;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF5F6F9),
      ),
      child: ListTile(
        onTap: press as void Function(),
        leading: leading,
        title: Text(name),
        trailing: const Icon(Icons.navigate_next),
      ),
    );
  }
}