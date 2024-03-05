// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_proj_on_github/Pages/pagesUser/userinfo.dart';

import '../../Domain/customAppBar.dart';
import '../../Domain/listItem.dart';
import '../menu.dart';
import '../pagesUser/BNavBarPages/workerslist.dart';
import 'UserReview.dart';

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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(scaffoldKey: _scaffoldKey,showSearchBox: false,),
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
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
                top: 60,
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
                top: 90,
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
                              onPressed: () => navigateToPage1(context,Cutomerinfo()),
                        pageIndex: 5);
                  },
                ),
              )
            ])
        ),
        drawer: Menu(scaffoldKey: _scaffoldKey,),
      ),
    );
  }
}
