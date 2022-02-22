import 'package:flutter/material.dart';
import 'package:work/screens/filter/filter.dart';
import 'package:work/screens/home/my_home_page.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case '/filter':
        return MaterialPageRoute(builder: (_) => const FilterPage());
    }
  }
}
