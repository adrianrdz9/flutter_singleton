import 'package:flutter/material.dart';
import 'package:state_management/page/page1_page.dart';
import 'package:state_management/page/page2_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'page1',
      routes: {
        'page1': (_) => OnePage(),
        'page2': (_) => TwoPage(),
        
      },
    );
  }
}