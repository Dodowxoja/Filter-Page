import 'package:flutter/material.dart';
import 'package:work/screens/pages/favorite_page.dart';
import 'package:work/screens/pages/home_page.dart';
import 'package:work/screens/pages/person_page.dart';
import 'package:work/screens/pages/setting_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List<Widget>? _pages;
  final keyHomePage = const PageStorageKey('Home_value');
  final keyShopPage = const PageStorageKey('Shop_value');

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePage(key: keyHomePage),
      FavoritePage(key: keyShopPage),
      const PersonPage(),
      const SettingPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages![_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
      ),
    );
  }
}
