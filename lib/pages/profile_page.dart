import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withOpacity(0.9),
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
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent.withOpacity(1),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: Icon(Icons.face_4, color: Colors.white, size: 120),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment(0.3, 0.34444444),
            child: Container(
              width: 800,
              height: 300,
              color: Colors.pink,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Tuyisenge Tite",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "tuyisengetito2@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(color: Colors.black),
                    child: Column(children:[

                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
