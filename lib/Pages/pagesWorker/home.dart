// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grad_proj/Domain/listItem.dart';
import 'package:grad_proj/Pages/pagesWorker/UserReview.dart';

class HomeWorker extends StatelessWidget {
  HomeWorker({Key? key}) : super(key: key);

  //const WorkersList({Key? key});
  List User = [
    {
      "name": "Ola Ahmed",
      "Type": "Air Conditioning Maintenance",
      "pic": "assets/images/profile.png",
      "Number": "0123456",
      "Description": "skilled and professional technician",
      "Review": "",
      "Rating": 4.4,
      "Date": DateTime(2024, 12, 31),
      "Commission Fee": 200,
      "emergency": false
    },
    {
      "name": "Zeinab Ahmed",
      "Type": "Refrigerator Maintenance",
      "pic": "assets/images/profile.png",
      "Rating": 5.0,
      "Number": "1237568",
      "Description": "",
      "Review": "",
      "Date": DateTime(2024, 2, 15),
      "Commission Fee": 300,
      "emergency": true
    },
    {
      "name": "Mo'men Ahmed",
      "Type": "Refrigerator Maintenance",
      "pic": "assets/images/profile.png",
      "Rating": 5.0,
      "Number": "1237568",
      "Description": "",
      "Review": "",
      "Date": DateTime(2024, 1, 10),
      "Commission Fee": 400,
      "emergency": false
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
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
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
                      SizedBox(
                        width: 7,
                      ),
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
                  itemCount: User.length,
                  itemBuilder: (context, itemCount) {
                    return ListItem(
                        worker: User[itemCount],
                        trailingWidget: User[itemCount]['emergency'] == true
                            ? Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset("assets/images/Siren.png"),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset("assets/images/Siren2.png"),
                              ),
                              navigateToPage: "/reviewU",
                        pageIndex: 5);
                  },
                ),
              )
            ])),
      ),
    );
  }
}
