import 'package:flutter/material.dart';
import 'package:sugu/screens/complete_profile/complete_profile_screen.dart';
import 'package:sugu/screens/details/details_screen.dart';
import 'package:sugu/screens/forgot_password/forgot_password_screen.dart';
import 'package:sugu/screens/home/home_screen.dart';
import 'package:sugu/screens/login_success/login_success_screen.dart';
import 'package:sugu/screens/otp/otp_screen.dart';
import 'package:sugu/screens/sign_up/sign_up_screen.dart';
import 'package:sugu/screens/splash/splash_screen.dart';
import 'package:sugu/screens/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
};