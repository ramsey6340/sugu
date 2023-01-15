import 'package:flutter/material.dart';
import 'package:sugu/routes.dart';
import 'package:sugu/screens/main_screen.dart';
import 'package:sugu/screens/splash/splash_screen.dart';
import 'package:sugu/screens/user_page/store/store_screen.dart';
import 'package:sugu/size_config.dart';
import 'package:sugu/theme.dart';

import 'components/test_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: MyShopScreen(),
      initialRoute: MainScreen.routeName,
      routes: routes,
    );
  }
}

