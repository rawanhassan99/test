// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  "assets/images/menu&profile&rec.svg",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 15,
                  right: 15,
                  child: SvgPicture.asset(
                    "assets/images/FixIt.svg",
                    fit: BoxFit.cover,
                  )),
              Center(
                child: Stack(
                  children: [
                    SvgPicture.asset(            //rectangle at the center
                      "assets/images/Rec that Contain Categories.svg",
                      fit: BoxFit.cover,
                    ),
                    Positioned.fill(            //email,pass ... 
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'LOGIN AS USER',
                            style: TextStyle(
                                fontFamily: "Quando",
                                color: Color(0xFFBBA2BF),
                                height: 3,
                                fontSize: 24),
                          ),
                          Text('Email:',
                              style: TextStyle(
                                fontFamily: "Quando",
                              )),
                          TextField(

                          ),
                          Text('Password:',
                              style: TextStyle(
                                fontFamily: "Quando",
                              )),
                          TextField(
                            obscureText: true,
                          ),
                          Text('Or Login with ',
                              style: TextStyle(
                                fontFamily: "Raleway",
                              )),
                          ElevatedButton(
                            onPressed: () {
                             // Navigator.pushNamed(context, "/signup");
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFFBBA2BF)),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 77, vertical: 13)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(27))),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 17, color: Colors.grey[850]),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account? ',
                                  style: TextStyle(
                                    fontFamily: "Raleway",
                                  )),
                              Text('Sign up ',
                                  style: TextStyle(
                                    fontFamily: "Raleway",
                                    color: Color(0xFFBBA2BF),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
