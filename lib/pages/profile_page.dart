import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey.withOpacity(0.1222222222222),
        ),
        SvgPicture.asset('assets/icons/RectangleCurve.svg'),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: SvgPicture.asset(' assets/icons/RectangleCurve.svg'),
        ),
        Container(
          height: double.infinity,
          width: 200,
          alignment: Alignment(-0.4, -0.5),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment(0.2, 0.4),
          child: Container(width: 800, height: 300, color: Colors.pink),
        ),
      ],
    );
  }
}
