import 'package:Disenos_FLutter/src/pages/basico_pages.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'basico',
      routes: {
        'basico' : (BuildContext context) => BasicoPage(),
      },
    );
  }
}