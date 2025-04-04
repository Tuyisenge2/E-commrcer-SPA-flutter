import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SceneCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.655),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              height: 35,
              width: 35,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(400),
              ),
              child: SvgPicture.asset('assets/icons/sun.svg'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              'Morning Scene',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/toggleButton.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
