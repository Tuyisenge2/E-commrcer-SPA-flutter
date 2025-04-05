import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: Container(color: Colors.black),
      ),
    );
  }
}
