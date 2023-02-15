import 'package:flutter/material.dart';
import 'package:sugu/components/test_widget.dart';
import 'package:sugu/screens/login_page/forgot_password/forgot_password_screen.dart';
import 'package:sugu/screens/login_page/otp/otp_screen.dart';
import 'package:sugu/screens/login_page/sign_in/sign_in_type.dart';
import 'package:sugu/screens/login_page/sign_in/sign_in_screen.dart';
import 'package:sugu/screens/login_page/sign_up/components/location_additional_info.dart';
import 'package:sugu/screens/login_page/sign_up/components/sign_up_additional_info.dart';
import 'package:sugu/screens/login_page/sign_up/sign_up_screen.dart';
import 'package:sugu/screens/login_page/sign_up/sign_up_type.dart';
import 'package:sugu/screens/main_screen.dart';
import 'package:sugu/screens/splash/sign_in_or_sign_up.dart';
import 'package:sugu/screens/splash/splash_screen.dart';
import 'package:sugu/screens/user_page/chat/components/chat/inbox.dart';
import 'package:sugu/screens/user_page/details_product/details_product_screen.dart';
import 'package:sugu/screens/user_page/filter/filter_by.dart';
import 'package:sugu/screens/user_page/filter/filter_screen.dart';
import 'package:sugu/screens/user_page/home/home_screen.dart';
import 'package:sugu/screens/user_page/profile/components/components/account/account.dart';
import 'package:sugu/screens/user_page/profile/components/components/help/components/condition_and_privacy_policy.dart';
import 'package:sugu/screens/user_page/profile/components/components/help/components/contacted_us.dart';
import 'package:sugu/screens/user_page/profile/components/components/help/components/faq_sugu.dart';
import 'package:sugu/screens/user_page/profile/components/components/help/help.dart';
import 'package:sugu/screens/user_page/profile/components/components/setting/components/notification_setting.dart';
import 'package:sugu/screens/user_page/profile/components/components/setting/setting.dart';
import 'package:sugu/screens/user_page/profile/profile_screen.dart';
import 'package:sugu/screens/user_page/store/components/add_product/add_product.dart';
import 'package:sugu/screens/user_page/store_modification/store_modification_screen.dart';
import 'datas/store_data.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInOrSignUp.routeName: (context) => SignInOrSignUp(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignInType.routeName: (context) => SignInType(),
  SignUpType.routeName: (context) => SignUpType(),
  SignUpAdditionalInfo.routeName: (context) => SignUpAdditionalInfo(),
  LocationAdditionalInfo.routeName: (context) => LocationAdditionalInfo(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsProductScreen.routeName: (context) => DetailsProductScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  Inbox.routeName: (context) => Inbox(),
  FilterScreen.routeName: (context) => FilterScreen(),
  AddProduct.routeName: (context) => AddProduct(),
  FilterBy.routeName: (context) => FilterBy(),
  StoreModificationScreen.routeName: (context) => StoreModificationScreen(),
  Account.routeName: (context) => Account(),
  Help.routeName: (context) => Help(),
  Setting.routeName: (context) => Setting(),
  NotificationSetting.routeName: (context) => NotificationSetting(),
  FAQSugu.routeName: (context) => FAQSugu(),
  ContactedUs.routeName: (context) => ContactedUs(),
  ConditionAndPrivacyPolicy.routeName: (context) => ConditionAndPrivacyPolicy(),

  TestWidget.routeName: (context) => TestWidget(store: stores[1]),
};
