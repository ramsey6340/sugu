import 'package:flutter/material.dart';

import '../constantes.dart';


class NextPage extends StatelessWidget {
  const NextPage({Key? key, required this.title, required this.press, required this.leading, this.enable=true, this.trailing=const Icon(Icons.navigate_next), this.subTitle='',}) : super(key: key);
  final String title;
  final Widget? leading;
  final Widget? trailing;
  final String subTitle;
  final Function press;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kFourColor,
      ),
      child: ListTile(
        onTap: press as void Function(),
        leading: leading,
        title: Text(title, style: const TextStyle(color: Colors.black, overflow: TextOverflow.ellipsis),),
        subtitle: Text(subTitle, style: const TextStyle( overflow: TextOverflow.ellipsis)),
        enabled: enable,
        trailing: (enable)? trailing : null,
      ),
    );
  }
}