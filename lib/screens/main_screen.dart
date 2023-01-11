import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'package:sugu/screens/user_page/chat/chat_screen.dart';
import 'package:sugu/screens/user_page/home/home_screen.dart';
import 'package:sugu/screens/user_page/my_favorite_products/my_favorite_product_screen.dart';
import 'package:sugu/screens/user_page/my_shop/my_shop_screen.dart';
import 'package:sugu/screens/user_page/profile/profile_screen.dart';

import '../datas/store_data.dart';


class MainScreen extends StatefulWidget
{
  static String routeName = '/main_screen';

  const MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late Widget _currentScreen;
  late List<Widget> _screenList;
  late Widget _homeScreen;
  late Widget _myFavoriteProductScreen;
  late Widget _myShopScreen;
  late Widget _chatScreen;
  late Widget _profileScreen;
  int currentMenuIndex = 0;

  @override
  initState() {
    super.initState();
    _homeScreen = HomeScreen();
    _myFavoriteProductScreen = MyFavoriteProductScreen();
    _myShopScreen = MyShopScreen();
    _chatScreen = ChatScreen();
    _profileScreen = ProfileScreen();
    _screenList = [_homeScreen, _myFavoriteProductScreen, _myShopScreen, _chatScreen, _profileScreen];
    _currentScreen = _screenList[currentMenuIndex];
  }

  void _onItemTapped(int index) {
    setState(() {
      currentMenuIndex = index;
      _currentScreen = _screenList[currentMenuIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.storefront,), label: '', ),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp), label: '',),
        ],
        selectedItemColor: kPrimaryColor,
        currentIndex: currentMenuIndex,
        onTap: _onItemTapped,
        iconSize: 30.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}