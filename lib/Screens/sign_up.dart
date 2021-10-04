import 'package:doctor_consulting_app/Screens/sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var keyState = GlobalKey<FormState>();

  var emailCon = TextEditingController();

  var passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/SignUp.png"),
                    fit: BoxFit.fill)),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: defaultPadding, left: defaultPadding),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40 + defaultPadding,
                      ),
                      Text(
                        "Create Account",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "Already have an account?  ",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black54)),
                        TextSpan(
                            text: "Sign In!",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()));
                              })
                      ])),
                      SizedBox(
                        height: 2 * defaultPadding,
                      ),
                      Form(
                        key: keyState,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "User Name",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                validator: (s) {
                                  if (s!.isEmpty) {
                                    return "Please Enter your User Name!";
                                  }
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    hintText: "AJ", border: textFieldBorder),
                              ),
                              SizedBox(
                                height: defaultPadding,
                              ),
                              Text(
                                "Email",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                validator: (s) {
                                  if (s!.isEmpty) {
                                    return "Please Enter your email!";
                                  } else if (!RegExp(
                                          "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                      .hasMatch(s)) {
                                    return "Please write the apropriate email";
                                  }
                                },
                                controller: emailCon,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    hintText: "test@email.com",
                                    border: textFieldBorder),
                              ),
                              SizedBox(
                                height: defaultPadding,
                              ),
                              Text(
                                "Phone",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                validator: (s) {
                                  if (s!.isEmpty) {
                                    return "Please write your phone";
                                  } else if (!s.contains(RegExp(r'[0-9]'))) {
                                    return "Please write a vaild phone";
                                  }
                                },
                                keyboardType: TextInputType.phone,
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "+251963313187",
                                    border: textFieldBorder),
                              ),
                              SizedBox(
                                height: defaultPadding,
                              ),
                              Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                validator: (s) {
                                  if (s!.isEmpty) {
                                    return "Please write your password";
                                  } else if (!RegExp(r'(?=.*?[#?!@$%^&*-])')
                                      .hasMatch(s)) {
                                    return 'passwords must have at least one special character';
                                  }
                                },
                                controller: passwordCon,
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "*****", border: textFieldBorder),
                              ),
                              SizedBox(
                                height: defaultPadding,
                              ),
                              Text(
                                "Confirm Password",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                validator: (s) {
                                  if (s!.isEmpty) {
                                    return "Please write confirm password";
                                  } else if (s == passwordCon.text) {
                                    return 'please write the password that entered before';
                                  }
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "*****", border: textFieldBorder),
                              ),
                              SizedBox(
                                height: 2 * defaultPadding,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: primaryColor),
                                  onPressed: () {
                                    if (keyState.currentState!.validate()) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                'Your Data is validated.')),
                                      );
                                    }
                                  },
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.all(defaultPadding),
                                    child: Text("Sign In"),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
