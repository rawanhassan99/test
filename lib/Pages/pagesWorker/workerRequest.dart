// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, must_be_immutable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_proj/Pages/pagesWorker/WokerBottomNavBar.dart';

class WorkerRequest extends StatefulWidget {
  const WorkerRequest({Key? key}) : super(key: key);

  @override
  _WorkerRequestState createState() => _WorkerRequestState();
}

class _WorkerRequestState extends State<WorkerRequest> {
  
  bool isAvailable24H = false;

  @override
  Widget build(BuildContext context) {
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
                bottom: 590,
                child: SvgPicture.asset(
                  'assets/images/Rec that Contain menu icon &profile.svg',
                  fit: BoxFit.fill,
                ),
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

              SizedBox(
                height: 30,
              ),

              ListView(
                padding: EdgeInsets.symmetric(vertical: 100),
                children: [
                  FriendPost(
                    proName: 'Hi MR Mohamed!',
                  ),
                ],
              ),

              Positioned(
                top: 15,
                left: 0,
                right: 0,
                bottom: 300,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 350,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text('Carpenters'),
                                  onTap: () {
                                    setState(() {});
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  title: Text('Plumbers'),
                                  onTap: () {
                                    setState(() {});

                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  title: Text('Electricians'),
                                  onTap: () {
                                    setState(() {});
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  title: Text('Painters'),
                                  onTap: () {
                                    setState(() {});
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  title: Text('Tilers'),
                                  onTap: () {
                                    setState(() {});
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  title: Text('Plastering Contractors'),
                                  onTap: () {
                                    setState(() {});
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  title: Text('Appliance Repair Technician'),
                                  onTap: () {
                                    setState(() {});
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.grey),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Select Your Job',
                            style: TextStyle(fontSize: 13),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Add Post Fields and Button
              Positioned(
                top: 300, // تعديل الارتفاع حسب الاحتياج
                left: 20, // تعديل المسافة من اليسار حسب الاحتياج
                right: 20,
                bottom: 9,
                // تعديل المسافة من اليمين حسب الاحتياج
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Describe Yourself.......',
                              border: InputBorder.none,
                            ),
                            minLines: 3,
                            maxLines: 5,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    // القطعة المضافة بين الحقل النصي وعنصر "proName"

                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              // Add functionality for upload photo/video button
                              print('Upload button pressed');
                            },
                            icon: Icon(Icons.photo),
                            label: Text('Upload Your National ID card',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.start, // يبدأ من اليسار
                        children: [
                          IconButton(
                            icon: isAvailable24H
                                ? Icon(Icons
                                    .check_box) // لون الأيقونة عندما يكون المتغير مختار
                                : Icon(Icons
                                    .check_box_outline_blank), // لون الأيقونة عندما لا يكون المتغير مختار
                            onPressed: () {
                              setState(() {
                                isAvailable24H = !isAvailable24H;
                              });
                            },
                          ),
                          Text(
                            'Are You Available 24H',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(
                                    255, 0, 0, 0)), // تحديد لون النص
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 150, // تحديد العرض حسب الحاجة
                          height: 50, // تحديد الارتفاع حسب الحاجة
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavBarWorker()));

                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFBBA2BF),
                            ), // Change button color
                            child: Text(
                              'Send Request',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
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

//post layer
  Widget FriendPost({
    required String proName,
  }) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Text(
                        proName,
                        style: TextStyle(
                          fontSize: 30.0,
                          //  fontWeight: FontWeight.bold,
                          height: 3.0,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ),
                    SizedBox(height: 45.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
