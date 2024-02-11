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
                child: Image.asset("assets/images/FixxIt.png"),
              
                // child: SvgPicture.asset(
                //   "assets/images/FixIt.svg",
                //   fit: BoxFit.cover,
                // ),
              ),
              Center(
                //centerd rectangle
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Rec that Contain Categories.svg",
                      fit: BoxFit.cover,
                    ),
                    Positioned.fill(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Transform.translate(
                              offset: Offset(0, -10),
                              child: Text(
                                'LOGIN AS USER',
                                style: TextStyle(
                                  fontFamily: "Quando",
                                  color: Color.fromARGB(255, 173, 148, 177),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w300                      ),
                              ),
                            ),
                           SizedBox(height: 30),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'User name:',
                                style: TextStyle(
                                  fontFamily: "Quando",
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                                  SizedBox(height: 7),
                            TextField(
                              decoration: InputDecoration(labelText: "name",
                              //fillColor: Colors.blue[100],
                              prefixIcon: Icon(Icons.person),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),

      
       ),),)
                           , SizedBox(height: 16),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Password:',
                                style: TextStyle(
                                  fontFamily: "Quando",
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                             SizedBox(height: 7),
                            TextField(
                              obscureText: true,
                             decoration: InputDecoration(
                              labelText: "password",
                              //fillColor: Colors.blue[100],
                              prefixIcon: Icon(Icons.password),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),

      
       ),
                             // errorText: "Password must be at least 8 characters.") ,
                            )),
                            SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Or Login with ',
                                  style: TextStyle(
                                    fontFamily: "Raleway",
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/images/facebook.svg',
                                  width: 30,
                                  height: 30,
                                  color: Color.fromARGB(255, 173, 148, 177),
                                ),
                                SvgPicture.asset(
                                  'assets/images/google.svg',
                                  width: 30,
                                  height: 30,
                                  color: Color.fromARGB(255, 173, 148, 177),
                                )
                              ],
                            ),
                            SizedBox(height:5,),
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.pushNamed(context, "/signup");
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFBBA2BF)),
                                padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 77, vertical: 13),
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                ),
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey[850],
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Don\'t have an account? ',
                                  style: TextStyle(
                                    fontFamily: "Raleway",
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    // Navigator.pushNamed(context, "/signup");
                                  },
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                      fontFamily: "Raleway",
                                      color: Color.fromARGB(255, 173, 148, 177),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline
                                     
                                      
                                      
                                      
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
