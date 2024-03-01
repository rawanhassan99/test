// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HistoryWorker extends StatefulWidget {
  const HistoryWorker({super.key});

  @override
  _HistoryWorkerState createState() => _HistoryWorkerState();
}

class _HistoryWorkerState extends State<HistoryWorker> {
  final int _currentIndex = 0;

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
                top: 130,
                left: 6,
                child: Text(
                  "Recent:",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Raleway",
                    color: Colors.black,
                    shadows: const [
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
                    Map<String, dynamic> currentWorker = recentWorkers[itemCount];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      child: 
                        Container(
                          child: Text(currentWorker["name"]),
                      ),
                    );
                  },
                ),
              ),

              //text
              Positioned(
                top: 500,
                left: 6,
                child: Text(
                  "Previous Requests:",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Raleway",
                    color: Colors.black,
                    shadows: const [
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
                top: 550,
                right: 5,
                left: 5,
                bottom: 0,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection:Axis.vertical,
                  itemCount: previousRequests.length,
                  itemBuilder: (context, itemCount) {
                    Map<String, dynamic> currentRequest = previousRequests[itemCount];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      child: Container(
                        // ... existing code ...
                        child: Text(currentRequest["name"]),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        // ... rest of the code ...
      ),
    );
  }
}