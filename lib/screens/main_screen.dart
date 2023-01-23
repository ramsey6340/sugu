import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import 'package:sugu/screens/user_page/chat/message_screen.dart';
import 'package:sugu/screens/user_page/home/home_screen.dart';
import 'package:sugu/screens/user_page/my_favorite_products/my_favorite_product_screen.dart';
import 'package:sugu/screens/user_page/store/store_screen.dart';
import 'package:sugu/screens/user_page/profile/profile_screen.dart';

import '../datas/datas_current.dart';
import '../datas/store_data.dart';
import '../size_config.dart';


class MainScreen extends StatefulWidget
{
  static String routeName = '/main_screen';

  const MainScreen({Key? key, this.index}) : super(key: key);
  final int? index;
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
  late int currentMenuIndex;

  @override
  initState() {
    super.initState();
    if(widget.index != null){
      currentMenuIndex = widget.index!;
    }
    else{
      currentMenuIndex = 0;
    }
    _homeScreen = HomeScreen();
    _myFavoriteProductScreen = MyFavoriteProductScreen();
    _myShopScreen = StoreScreen(store: currentStore,);
    _chatScreen = MessageScreen();
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
    /*bool index = false;
    index = ModalRoute.of(context)?.settings.arguments as bool;
    if(index){
      setState(() {
        currentMenuIndex = 2;
      });
    }*/
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white54.withOpacity(1),
      body: _currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.storefront), label: '', ),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: '',),
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