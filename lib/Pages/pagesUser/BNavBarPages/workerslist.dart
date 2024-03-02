// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//import 'package:grad_proj/pages/HomeScreen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grad_proj/Domain/listItem.dart';

import 'package:grad_proj/Pages/pagesWorker/workerInfo.dart';
import 'package:grad_proj/Pages/pagesUser/workerReview.dart';

class WorkersList extends StatelessWidget {
   WorkersList({Key? key}) : super(key: key);
  
  List worker = [
    {
      "name": "Seif Ahmed",
      "Type": "Air Conditioning Maintenance",
      "pic": "assets/images/profile.png",
      "Number": "0123456",
      "Description": "skilled and professional technician",
      "Review": "",
      "Rating": 4.4,
        "Favorite":true

    },
    {
      "name": "Nagy Ahmed",
      "Type": "Refrigerator Maintenance",
      "pic": "assets/images/profile.png",
      "Rating": 5.0,
      "Number": "1237568",
      "Description": "",
      "Review": "",
        "Favorite":true
      
    },
    {
      "name": "Mohamed Ahmed",
      "Type": "Air Conditioning Maintenance",
      "pic": "assets/images/profile.png",
      "Rating": 2.9,
      "Number": "0123456",
      "Description": "skilled and professional technician",
      "Review": "",
        "Favorite":false
    },
    {
      "name": "Mohamed Ahmed",
      "Type": "Air Conditioning Maintenance",
      "pic": "assets/images/profile.png",
      "Rating": 2.5,
      "Number": "0123456",
      "Description": "skilled and professional technician",
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
                  "assets/images/Rec that Contain menu icon &profile.svg",
                  fit: BoxFit.cover,
                ),
              ),
              //back button
              Positioned(
                left: 3,
                top: 9,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
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
              //search input
              Padding(
                padding: EdgeInsets.only(top: 90.0, right: 30, left: 30),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Search technician name",
                    contentPadding: EdgeInsets.zero,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide.none, // Remove the border side
                    ),
                    filled: true, // Set filled to true
                    fillColor: Colors.white, // Set the fill color to white
                  ),
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
              //Workers List
              Positioned(
                top: 180,
                right: 5,
                left: 5,
                bottom: 0,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: worker.length,
                  itemBuilder: (context, itemCount) {
                    return ListItem(
                      worker: worker[itemCount],
                       pageIndex: 0,
                        onPressed: () => navigateToPage1(context),
                       
                    );
                  },
                ),
       
              )
            ])),
       
      
      ),
    );
  }


}
void navigateToPage1(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => WorkerReview()));
  }