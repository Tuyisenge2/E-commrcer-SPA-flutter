import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final double width;
  final String hint;
  final Color inputColor;

  const InputField({super.key, required this.width, required this.hint,required this.inputColor});
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: width),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          fillColor: inputColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: inputColor),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
    );
  }
}
              // ConstrainedBox(
              //   constraints: BoxConstraints(maxWidth: 400),
              //   child: TextField(
              //     maxLength: 20,
              //     decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.white),
              //         borderRadius: BorderRadius.all(Radius.circular(8)),
              //       ),
              //       fillColor: Colors.white,
              //       filled: true,
              //       hintText: "Email",
              //     ),
              //   ),
              // ),