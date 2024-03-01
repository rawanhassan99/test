
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grad_proj/Domain/listItem.dart';
import 'package:grad_proj/Pages/pagesUser/workerReview.dart';
import 'package:grad_proj/Pages/pagesWorker/MenuWorker.dart';


class HistoryWorker extends StatefulWidget {
  @override
  _HistoryWorkerState createState() => _HistoryWorkerState();
}

class _HistoryWorkerState extends State<HistoryWorker> {
 

  List<Map<String, dynamic>> worker = [
    {
      "name": "Ola Ahmed",
      "Type": "Air Conditioning Maintenance",
      "pic": "assets/images/profile.png",
      "Number": "0123456",
      "Description": "skilled and professional technician",
      "Review": "",
      "Rating": 4.4,
      "Date": DateTime(2024, 12, 31),
      "Commission Fee":200
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
       "Commission Fee":50
    },
    {
      "name": "Laila Ahmed",
      "Type": "Refrigerator Maintenance",
      "pic": "assets/images/profile.png",
      "Rating": 5.0,
      "Number": "1237568",
      "Description": "",
      "Review": "",
      "Date": DateTime(2024, 1, 10),
       "Commission Fee":100
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
                     //  Navigator.pushNamed(context, "/signup");
                      Navigator.push(
                                      context,
                                       MaterialPageRoute(builder: (context)=>Menuw())
                                      );
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
                 return ListItem(
                worker: recentWorkers[itemCount],
                trailingWidget: recentWorkers[itemCount]['emergency'] == true
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset("assets/images/Siren.png"),): null,
                pageIndex: 4); },
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
                    return ListItem(
                worker: previousRequests[itemCount],
                trailingWidget: previousRequests[itemCount]['emergency'] == true
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset("assets/images/Siren.png"),): null,
                pageIndex: 4); },
                ),
              ),
            ],
          ),
        ),
       
   ),
    );
  }
}