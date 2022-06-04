import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sugu/constantes.dart';
import 'package:sugu/routes.dart';
import 'package:sugu/screes/splash/splash_screen.dart';
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
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

