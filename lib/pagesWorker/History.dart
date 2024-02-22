// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HistoryWorker extends StatefulWidget {
  @override
  _HistoryWorkerState createState() => _HistoryWorkerState();
}

class _HistoryWorkerState extends State<HistoryWorker> {
  int _currentIndex = 0;

  List<Map<String, dynamic>> worker = [
    {
      "name": "Mohamed Ahmed",
      "Type": "Air Conditioning Maintenance",
      "pic": "assets/images/profile.png",
      "Number": "0123456",
      "Description": "skilled and professional technician",
      "Review": "",
      "Rating": 4.4,
      "Date": DateTime(2024, 12, 31),
    },
    {
      "name": "Nagy Ahmed",
      "Type": "Refrigerator Maintenance",
      "pic": "assets/images/profile.png",
      "Rating": 5.0,
      "Number": "1237568",
      "Description": "",
      "Review": "",
      "Date": DateTime(2024, 2, 15),
    },
    {
      "name": "Ziad Ahmed",
      "Type": "Refrigerator Maintenance",
      "pic": "assets/images/profile.png",
      "Rating": 5.0,
      "Number": "1237568",
      "Description": "",
      "Review": "",
      "Date": DateTime(2024, 1, 10),
    },
  ];

  //returns a list of maps, where each map has string keys and dynamic values.
  List<Map<String, dynamic>> getRecentWorkers() {
    //to get current date
    DateTime today = DateTime.now();
    //The where method filters the list based on a given condition
    return worker.where((w) {
      DateTime appointmentDate = w['Date'];
      return appointmentDate.isAfter(today);
    }).toList();
  }

  List<Map<String, dynamic>> getPreviousRequests() {
    DateTime today = DateTime.now();
    return worker.where((w) {
      DateTime appointmentDate = w['Date'];
      return appointmentDate.isBefore(today);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> recentWorkers = getRecentWorkers();
    List<Map<String, dynamic>> previousRequests = getPreviousRequests();

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
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

              SizedBox(
                height: 35,
              ),

              //text recent
              Positioned(
                top: 145,
                left: 6,
                child: Text(
                  "Recent:",
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

              //Recent Workers List
              Positioned(
                top: 180,
                right: 5,
                left: 5,
                bottom: 0,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: recentWorkers.length,
                  itemBuilder: (context, itemCount) {
                    Map<String, dynamic> currentWorker =
                        recentWorkers[itemCount];
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
                              //profile
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
                          //name
                          title: Text(
                            currentWorker['name'],
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Raleway",
                              color: Colors.black,
                            ),
                          ),
                          //info and button
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // currentWorker[itemCount]['Type'],
                                "Expected: 300 Egyptian Pound",
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
                                    currentWorker['Number'],
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Quantico",
                                      color: Colors.black87,
                                    ),
                                  ),
                                  SizedBox(width: 60),
                                  RatingBar.builder(
                                    initialRating: currentWorker['Rating'],
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
                              // Row(
                              //   children: [

                              // Text(
                              //   worker[itemCount]['Rating'].toString(),
                              //   style: TextStyle(
                              //     fontSize: 16,
                              //     fontFamily: "Raleway",
                              //     color: Colors.black87,
                              //   ),
                              // ),
                              //   ],
                              // ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      //      Navigator.push(
                                      //context,
                                      //  MaterialPageRoute(builder: (context)=>WorkerInfo(itemCount))
                                      // );
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
                        ),
                      ),
                    );
                  },
                ),
              ),

              //text
              Positioned(
                top: MediaQuery.of(context).size.height * 0.5,
                left: 6,
                child: Text(
                  "Previous Requests:",
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

              //Previous Requests List
              Positioned(
                top: MediaQuery.of(context).size.height * 0.55,
                right: 5,
                left: 5,
                bottom: 0,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: previousRequests.length,
                  itemBuilder: (context, itemCount) {
                    Map<String, dynamic> currentRequest =
                        previousRequests[itemCount];
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
                              //profile
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
                          //name
                          title: Text(
                            currentRequest['name'],
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Raleway",
                              color: Colors.black,
                            ),
                          ),
                          //info and button
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // currentWorker[itemCount]['Type'],
                                "Expected: 300 Egyptian Pound",
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
                                    currentRequest['Number'],
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Quantico",
                                      color: Colors.black87,
                                    ),
                                  ),
                                  SizedBox(width: 60),
                                  RatingBar.builder(
                                    initialRating: currentRequest['Rating'],
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
                              // Row(
                              //   children: [

                              // Text(
                              //   worker[itemCount]['Rating'].toString(),
                              //   style: TextStyle(
                              //     fontSize: 16,
                              //     fontFamily: "Raleway",
                              //     color: Colors.black87,
                              //   ),
                              // ),
                              //   ],
                              // ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      //      Navigator.push(
                                      //context,
                                      //  MaterialPageRoute(builder: (context)=>WorkerInfo(itemCount))
                                      // );
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
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        //nav bar
        bottomNavigationBar: CurvedNavigationBar(
          items: [
            Icon(
              Icons.home,
              size: 35,
              color: Color(
                0xFFE9E9E9,
              ),
            ),
           
            Icon(
              Icons.support_agent,
              size: 35,
              color: Colors.white,
            ),
            Icon(
              Icons.notifications,
              size: 35,
              color: Colors.white,
            ),
            Icon(
              Icons.handshake,
              size: 35,
              color: Colors.white,
            ),
          ],
          color: Color(
            (0xFFBBA2BF),
          ),
          height: 55,
          backgroundColor: Colors.transparent,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          index: _currentIndex,
        ),
      ),
    );
  }
}
