import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DeviceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 140,
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 98.0),
            child: InkWell(child: SvgPicture.asset('assets/icons/less2.svg')),
          ),
          Image.asset('assets/images/AirCond.png'),
          Text(
            "Air Conditioner",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Text(
            "3 devices",
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/toggleButton.svg'),
          ),
        ],
      ),
    );
  }
}
