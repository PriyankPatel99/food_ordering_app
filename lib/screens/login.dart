import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/colors.dart';
import 'package:food_ordering_app/controller/google_sign_in.dart';
import 'package:food_ordering_app/screens/components/full_button.dart';
import 'package:food_ordering_app/screens/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                "Login",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Access account",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: isDarkMode
                          ? AppColors.subtextdark
                          : AppColors.subtextlight)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Container(
                        height: 56,
                        width: 145,
                        decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: IconButton(
                          icon: SvgPicture.asset(
                            "assets/google.svg",
                          ),
                          onPressed: () {
                            signInWithGoogle().then((result) {
                              if (result != null) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return HomePage();
                                    },
                                  ),
                                );
                              }
                            });
                          },
                        )),
                    Spacer(
                      flex: 1,
                    ),
                    Container(
                        height: 56,
                        width: 145,
                        decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: IconButton(
                          icon: SvgPicture.asset(
                            "assets/facebook.svg",
                          ),
                          onPressed: () {
                            print("Facebook");
                          },
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "or Login with Email",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: isDarkMode
                        ? AppColors.subtextdark
                        : AppColors.subtextlight),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 59,
                          width: MediaQuery.of(context).size.width * 0.80,
                          child: TextField(
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              hintText: "Search",
                              fillColor: Theme.of(context).cardColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(18)),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 59,
                          width: MediaQuery.of(context).size.width * 0.80,
                          child: TextField(
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                              hintText: "Password",
                              fillColor: Theme.of(context).cardColor,
                              filled: true,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(18)),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              FullButton(
                  pressed: () {
                    print("Login");
                  },
                  text: "Sign In"),
              SizedBox(
                height: 60,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                          text: "Don’t have an account?",
                          style: TextStyle(
                            color: isDarkMode
                                ? AppColors.subtextdark
                                : AppColors.subtextlight,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: "Register",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.fullbutton),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print("Register");
                                  })
                          ]),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
