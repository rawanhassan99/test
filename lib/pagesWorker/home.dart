// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grad_proj/pagesWorker/UserReview.dart';
import 'package:grad_proj/pagesWorker/workerInfo.dart';

class HomeWoker extends StatefulWidget {
  HomeWoker({Key? key}) : super(key: key);

  @override
  _HomeWokerState createState() => _HomeWokerState();
}

class _HomeWokerState extends State<HomeWoker> {
 
  //const WorkersList({Key? key});
  List worker = [
    {
      "name": "Dina Ahmed",
      "pic": "assets/images/profile.png",
      "Number": "0123456",
      "emergency": false,
      "Review": "",
      "Rating": 4.4
    },
    {
      "name": "Hany Ahmed",
      "emergency": true,
      "pic": "assets/images/profile.png",
      "Rating": 5.0,
      "Number": "1237568",
      "Review": ""
    },
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(children: [
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
                      // Navigator.push(
                      //                 context,
                      //                  MaterialPageRoute(builder: (context)=>Menu())
                      //                 );
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

              // SizedBox(
              //   height: 35,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 88),
                child: Container(
                   padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(31, 125, 124, 124),
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Colors.black26,
                      width: 2.0,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("assets/images/Siren.png"),
                      
                       SizedBox(width: 7,),
                         Text(
                          "For Emergency",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Raleway",
                            color: Colors.black,
                          ),
                        ),
                   
                    ],
                  ),
                ),
              ),
              //Text
              Positioned(
                top: 140,
                left: 6,
                child: Text(
                  "Today Requests:",
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
                top: 190,
                right: 5,
                left: 5,
                bottom: 0,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: worker.length,
                  itemBuilder: (context, itemCount) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
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
                          leading: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Profile
                              Container(
                                width: 65,
                                height: 55,
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                      AssetImage('assets/images/profile.png'),
                                ),
                              ),
                            ],
                          ),
                          // Name
                          title: Text(
                            worker[itemCount]['name'],
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Raleway",
                              color: Colors.black,
                            ),
                          ),
                          // Info and button
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Expected Commission fee: 300",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Quantico",
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    worker[itemCount]['Number'],
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Quantico",
                                      color: Colors.black87,
                                    ),
                                  ),
                                  SizedBox(width: 40),
                                  RatingBar.builder(
                                    initialRating: worker[itemCount]['Rating'],
                                    minRating: 1,
                                    maxRating: 5,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    unratedColor: Colors.grey,
                                    itemCount: 5,
                                    itemSize: 20.0,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=>UserReview()),
                                      );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xFFBBA2BF)),
                                      padding: MaterialStateProperty.all(
                                        EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 5),
                                      ),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(27),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Details",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          trailing: worker[itemCount]['emergency'] == true
                              //if it's true do that
                              ? Padding(
                                  padding: EdgeInsets.only(
                                      right: 8), // Adjust the margin as needed
                                  child: Image.asset("assets/images/Siren.png"),
                                )
                              //if false do null
                              : null,
                        ),
                      ),
                    );
                  },
                ),
              )
            ])),
 ),
    );
  }
}
