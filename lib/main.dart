import 'package:flutter/material.dart';
import 'package:web_login_ui/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web',
      theme: ThemeData(
         primaryColor: Color(0XFFF3630B),
      ),
      home: HomeView(),
    );
  }
}

