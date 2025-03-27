import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(color: Colors.green),
                ),
              ),
              // SizedBox(width: 20),
              Spacer(),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(color: Colors.green),
                ),
              ),
            ],
          ),
          Spacer(),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 300,
              width: 200,
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
