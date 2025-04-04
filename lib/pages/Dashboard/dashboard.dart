import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_app/components/device_card.dart';
import 'package:new_app/components/nav_bar.dart';
import 'package:new_app/components/plus_button.dart';
import 'package:new_app/components/responsive_text.dart';
import 'package:new_app/components/scene_card.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: NavBar(),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
      ),
      backgroundColor: Colors.black,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        spacing: 3,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              '24°C',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 38,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),

                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 8,
                                                  right: 17,
                                                ),
                                                child: Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    width: 35,
                                                    height: 15,
                                                    decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'normal',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 8,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SvgPicture.asset(
                                                'assets/icons/sunCloud.svg',
                                                height: 50,
                                                width: 50,
                                              ),
                                            ],
                                          ),
                                        ),
                                        //),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  SizedBox(
                                    width: double.infinity,
                                    child: FractionallySizedBox(
                                      widthFactor: 0.85,
                                      child: Text(
                                        'Temperature',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  SizedBox(
                                    width: double.infinity,
                                    child: FractionallySizedBox(
                                      widthFactor: 0.85,
                                      child: Text(
                                        'Kigali,RWANDA',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  SizedBox(
                                    width: double.infinity,
                                    child: FractionallySizedBox(
                                      widthFactor: 0.85,
                                      child: Text(
                                        'Thu,12:00, Mostly Cloudly',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 200,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: double.infinity,
                                            child: FractionallySizedBox(
                                              widthFactor: 0.85,
                                              child: Text(
                                                'Electricity',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: FractionallySizedBox(
                                              widthFactor: 0.85,
                                              child: Text(
                                                'Usage',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: FractionallySizedBox(
                                              widthFactor: 0.85,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 75,
                                                ),
                                                child: Text(
                                                  'Kwh',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w800,
                                                    height: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: FractionallySizedBox(
                                              widthFactor: 0.85,
                                              child: Center(
                                                child: Text(
                                                  '34.5',
                                                  style: TextStyle(
                                                    fontSize: 27,
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w900,
                                                    height: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Flexible(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: double.infinity,
                                            child: FractionallySizedBox(
                                              widthFactor: 0.85,
                                              child: Text(
                                                'Electricity',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: FractionallySizedBox(
                                              widthFactor: 0.85,
                                              child: Text(
                                                'Cost',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          SizedBox(
                                            width: double.infinity,
                                            child: FractionallySizedBox(
                                              widthFactor: 0.85,
                                              child: Center(
                                                child: Text(
                                                  '\$345',
                                                  style: TextStyle(
                                                    fontSize: 27,
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w900,
                                                    height: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Scenes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    PlusButton(height: 24, width: 24),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    spacing: 4,
                    children: [
                      SceneCard(
                        sceneMess: 'Morning scene',
                        iconPath: 'assets/icons/sun.svg',
                        togglePath: 'assets/icons/toggleButton.svg',
                      ),
                      SceneCard(
                        sceneMess: 'Night scene',
                        iconPath: 'assets/icons/moon.svg',
                        togglePath: 'assets/icons/toggleButton.svg',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Device',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          PlusButton(height: 15, width: 15),
                          Text(
                            'Add Device',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                DeviceCard(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Text('TabsActions'),
    );
  }
}
