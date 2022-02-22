import 'package:flutter/material.dart';
import 'package:work/routes/my_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final MyRoute _myRoute = MyRoute();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Room Booking',
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: _myRoute.onGenerateRoute,
      initialRoute: '/',
    );
  }
}
