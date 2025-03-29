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
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.red[300],
            child: FractionallySizedBox(
              alignment: Alignment.topRight,
              widthFactor: 0.8,
              heightFactor: 0.8,
              child: SizedBox(
                child: Container(child: Container(color: Colors.yellow)),
              ),
            ),
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
          Spacer(),
        ],
      ),
    );
  }
}
