import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  final double height;
  final double width;
  const PlusButton({required this.height, required this.width});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text('+', style: TextStyle(height: 1, fontSize: height)),
        ),
      ),
    );
  }
}
