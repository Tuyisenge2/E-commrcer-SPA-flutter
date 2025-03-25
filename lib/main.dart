import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_app/pages/LoginPage.dart';
import 'package:new_app/pages/ResetPassword.dart' show Resetpassword;
import 'package:new_app/pages/forgetPassword.dart' show Forgetpassword;
import 'package:new_app/pages/hero_section.dart';
import 'package:new_app/pages/home.dart';
import 'package:new_app/pages/login.dart' show Login;
import 'package:new_app/pages/profile_page.dart';
import 'package:new_app/pages/signup.dart' show Signup;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HeroSection()),
      GoRoute(path: '/Login', builder: (context, state) => Login()),
      GoRoute(path: '/signup', builder: (context, state) => Signup()),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(fontFamily: ''),
      //home: HeroSection(),
      //home: ProfilePage(),
      routerConfig: _router,
    );
  }
}
