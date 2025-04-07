import 'package:flutter/material.dart';

class TimesButton extends StatelessWidget {
  final double height;
  final double width;
  const TimesButton({required this.height, required this.width});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Color(0xFFB9F249),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text('×', style: TextStyle(height: 1, fontSize: height)),
        ),
      ),
    );
  }
}
