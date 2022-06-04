import 'package:flutter/material.dart';
import 'package:sugu/screes/forgot_password/forgot_password_screen.dart';
import 'package:sugu/screes/login_success/login_success_screen.dart';
import 'package:sugu/screes/splash/splash_screen.dart';
import 'package:sugu/screes/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
};