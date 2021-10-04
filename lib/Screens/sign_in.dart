import 'package:doctor_consulting_app/Screens/body.dart';
import 'package:doctor_consulting_app/Screens/sign_up.dart';
import 'package:doctor_consulting_app/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var keyState = GlobalKey<FormState>();
  var emailCon = TextEditingController(), passwordCon = TextEditingController();

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
              padding: const EdgeInsets.all(defaultPadding),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "Don't have an account?  ",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black54)),
                        TextSpan(
                            text: "Sign Up!",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
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
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (ctx) => Body()));
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
