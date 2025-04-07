import 'package:flutter/material.dart';

class Customizedbutton extends StatelessWidget {
  final Function bottomModal;
  const Customizedbutton({  this.bottomModal=defaultFuntion });
  static defaultFuntion (){} 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      bottomModal();
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Create yourScene',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
