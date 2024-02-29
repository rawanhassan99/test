// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class alartsWorker extends StatelessWidget {
  alartsWorker({Key? key}) : super(key: key);

  List notification1 = [
    {
      "massege1": "You Confirmed by Lailla Mohamed !",
    },
  ];
  List notification2 = [
    {
      "massege3": "We hope our serves helped you...",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Background Image

            Container(
              child: Stack(
                children: [
                  //purple foreground
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: SvgPicture.asset(
                      "assets/images/foregroundPurpleSmall.svg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  //Menu button
                  Positioned(
                    left: 3,
                    top: 9,
                    child: IconButton(
                        onPressed: () {
                          // Navigator.pushNamed(context, "/signup");
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 40,
                        )),
                  ),
                  //Mr. house word
                  Positioned(
                    top: 15,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: SvgPicture.asset("assets/images/MR. House.svg"),
                    ),
                  ),

                  //profile pic
                  Positioned(
                    right: 15,
                    top: 15,
                    child: CircleAvatar(
                      radius: 25, // Adjust radius as needed
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),

                  //text
                  Positioned(
                    top: 110,
                    left: 6,
                    child: Text(
                      "Today : ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Raleway",
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            color: Colors.black12,
                            offset: Offset(2, 2),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    left: 6,
                    child: Text(
                      "Suterday : ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Raleway",
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            color: Colors.black12,
                            offset: Offset(2, 2),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Workers List
                  Positioned(
                    top: 150,
                    right: 5,
                    left: 5,
                    bottom: 0,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: notification1.length,
                      itemBuilder: (context, itemCount) {
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(31, 125, 124, 124),
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: Colors.black26,
                                width: 2.0,
                              ),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.all(2),
                              leading: Column(),
                              //name
                              title: RichText(
                                text: TextSpan(
                                  text: 'You Confirmed by Lailla Mohamed ! ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Raleway",
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'show details',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Raleway",
                                        color: Color.fromARGB(255, 8, 110, 200),
                                        decoration: TextDecoration.underline,
                                      ),
                                      // Add onTap callback for the clickable text
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          // Handle the onTap action here
                                          print('Show details clicked!');
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  //Workers List
                  Positioned(
                    top: 300,
                    right: 5,
                    left: 5,
                    bottom: 0,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: notification2.length,
                      itemBuilder: (context, itemCount) {
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(31, 125, 124, 124),
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: Colors.black26,
                                width: 2.0,
                              ),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.all(2),
                              leading: Column(),
                              //name
                              title: RichText(
                                text: TextSpan(
                                  text: 'We hope our serves helped you...',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Raleway",
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
