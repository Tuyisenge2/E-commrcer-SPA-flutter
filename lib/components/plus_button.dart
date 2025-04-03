import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text('+', style: TextStyle(height: 1, fontSize: 24)),
        ),
      ),
    );
  }
}
