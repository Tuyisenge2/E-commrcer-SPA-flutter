import 'package:flutter/material.dart';
import 'package:new_app/pages/LoginPage.dart';
import 'package:new_app/pages/hero_section.dart';
import 'package:new_app/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: ''),
       home: HeroSection(),
      // home: Scaffold(
      //   appBar: AppBar(title: Text("the Nav Bar")),
      //   body: HeroSection(),
      // ),
    );
  }
}
