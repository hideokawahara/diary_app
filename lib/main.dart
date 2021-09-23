import 'package:diary_app/screens/bottom_tab_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => BottomTabScreen(),
      },
    );
  }
}
