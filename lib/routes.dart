import 'package:flutter/material.dart';
import 'package:sugu/components/test_widget.dart';
import 'package:sugu/screens/login_page/complete_profile/complete_profile_screen.dart';
import 'package:sugu/screens/login_page/forgot_password/forgot_password_screen.dart';
import 'package:sugu/screens/login_page/login_success/login_success_screen.dart';
import 'package:sugu/screens/login_page/otp/otp_screen.dart';
import 'package:sugu/screens/login_page/sign_in/sign_in_screen.dart';
import 'package:sugu/screens/login_page/sign_up/sign_up_screen.dart';
import 'package:sugu/screens/main_screen.dart';
import 'package:sugu/screens/splash/splash_screen.dart';
import 'package:sugu/screens/user_page/details/details_screen.dart';
import 'package:sugu/screens/user_page/home/home_screen.dart';
import 'package:sugu/screens/user_page/profile/profile_screen.dart';
import 'datas/product_data.dart';


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
  ProfileScreen.routeName: (context) => ProfileScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  TestWidget.routeName: (context) => TestWidget(product: products[0],),
};