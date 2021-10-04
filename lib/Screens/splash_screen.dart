import 'package:doctor_consulting_app/Screens/sign_in.dart';
import 'package:doctor_consulting_app/Screens/sign_up.dart';
import 'package:doctor_consulting_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/Splash_screen.png",
                  ),
                  fit: BoxFit.fill)),
        ),
        Center(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/gerda_logo.svg"),
                  Spacer(),
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Sign Up"),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xFF6CD8D1)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                             Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Sign In"),
                          ),
                          style: TextButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  side: BorderSide(color: Color(0xFF6CD8D1)))),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
