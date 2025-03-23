import 'package:flutter/material.dart';
import 'package:new_app/pages/LoginPage.dart';
import 'package:new_app/pages/ResetPassword.dart' show Resetpassword;
import 'package:new_app/pages/forgetPassword.dart' show Forgetpassword;
import 'package:new_app/pages/hero_section.dart';
import 'package:new_app/pages/home.dart';
import 'package:new_app/pages/login.dart' show Login;
import 'package:new_app/pages/profile_page.dart';
import 'package:new_app/pages/signup.dart' show Signup;

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
      //home: HeroSection(),
      home: Signup(),
    );
  }
}
