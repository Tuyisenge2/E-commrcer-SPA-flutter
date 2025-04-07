import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_app/components/customizedButton.dart';
import 'package:new_app/components/input_field.dart';
import 'package:new_app/components/scene_card.dart';
import 'package:new_app/components/times_button.dart';

class CreateScene extends StatefulWidget {
  @override
  _CreateScene createState() => _CreateScene();
}

class _CreateScene extends State<CreateScene> {
  void bottomModal() {
    showModalBottomSheet(
      backgroundColor: Color(0xFF31373C),
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            left: MediaQuery.of(context).size.width * 0.03,
            right: MediaQuery.of(context).size.width * 0.03,
          ),
          height: MediaQuery.of(context).size.height * 0.4,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [TimesButton(height: 20, width: 20)],
              ),
              Center(
                child: Text(
                  "Name Scene",
                  style: TextStyle(
                    color: Color(0xFFB9F249),
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2, color: Color(0xFFB9F249)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 8,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "×",
                          style: TextStyle(fontSize: 36, color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Customizedbutton(
                label: 'Continue',
                labelColor: Colors.black,
                buttonColor: Color(0xFFB9F249),
                bottomModal: creatSceneSecondModal,
              ),
              Customizedbutton(
                label: 'Back',
                labelColor: Color(0xFFB9F249),
                buttonColor: Color(0xFF31373C),
              ),
            ],
          ),
        );
      },
    );
  }

  void creatSceneSecondModal() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 400,
          width: double.infinity,
          color: Colors.blue,
          child: Column(children: []),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.1),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/greaterThan.svg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Scene",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

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
                  Spacer(),
                  Customizedbutton(
                    label: 'Create yourScene',
                    labelColor: Colors.black,
                    buttonColor: Color(0xFFB9F249),
                    bottomModal: bottomModal,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
