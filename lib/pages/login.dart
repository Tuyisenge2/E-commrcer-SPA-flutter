import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:go_router/go_router.dart';
import 'package:new_app/components/back_button.dart';
import 'package:new_app/components/forget_button.dart';
import 'package:new_app/components/input_field.dart';
import 'package:new_app/components/responsive_text.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, top: 65, right: 25),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/greenPlant.jpg'),
          fit: BoxFit.cover,
          alignment: Alignment.center,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.srcOver,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BackButtonComponent(route: "/"),

              Row(
                children: [
                  Flexible(
                    // fit: FlexFit.tight,
                    child: Container(
                      height: 45,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                      child: SvgPicture.asset('assets/icons/wifi.svg'),
                    ),
                  ),
                  SizedBox(width: 14),
                  ResponsiveText(
                    text: 'HomeSync',
                    textColor: Colors.white,
                    fontSize: 30,
                    fontweight: FontWeight.w900,
                  ),
                ],
              ),
              SizedBox(height: 20),

              Text(
                "SIGN IN",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 10),
              Text(
                "Looks like you have an account. Let’s sign in into your account for you.",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 20),
              InputField(width: 400, hint: 'Email', inputColor: Colors.white),
              SizedBox(height: 10),
              InputField(
                width: 400,
                hint: 'Password',
                inputColor: Colors.white,
              ),

              SizedBox(height: 20),
              SizedBox(
                height: 47,
                width: 400,
                child: TextButton(
                  onPressed: () {
                    context.push('/dashboard');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  child: Text("LOGIN", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 47,
                width: 400,
                child: TextButton(
                  onPressed: () {
                    context.push('/signup');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  child: Text("SIGN UP", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              ForgetButton(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(
                  //   width: screenWidth,
                  //   child: FractionallySizedBox(
                  //     widthFactor: 0.2,
                  //     child: Container(
                  //       //  width: double.infinity,
                  //       decoration: BoxDecoration(
                  //         border: Border.all(color: Colors.white, width: 1),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                  // Container(
                  //   width: 150,
                  //   decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.white, width: 1),
                  //   ),
                  // ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 47,
                width: 400,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                        child: SvgPicture.asset('assets/icons/google-icon.svg'),
                      ),

                      // Flexible(
                      //   child: FittedBox(
                      //     fit: BoxFit.scaleDown,
                      //     child: Text(
                      //       "SIGN UP WITH GOOGLE",
                      //       style: TextStyle(color: Colors.black, fontSize: 16),
                      //     ),
                      //   ),
                      // ),
                      ResponsiveText(
                        text: "SIGN UP WITH GOOGLE",
                        textColor: Colors.black,
                        fontSize: 16,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
