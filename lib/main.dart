import 'package:flutter/material.dart';
import 'package:sugu/routes.dart';
import 'package:sugu/screens/home/home_screen.dart';
import 'package:sugu/screens/splash/splash_screen.dart';
import 'package:sugu/size_config.dart';
import 'package:sugu/theme.dart';

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
      //home: SplashScreen(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}

