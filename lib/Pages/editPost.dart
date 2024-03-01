// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:grad_proj/Pages/pagesUser/MenuUser.dart';
import 'package:grad_proj/Pages/posts.dart';
import 'package:grad_proj/pages/editPost.dart';


class EditPost extends StatefulWidget {
  const EditPost({Key? key}) : super(key: key);

  @override
  _EditPostState createState() => _EditPostState();
}

class _EditPostState extends State<EditPost> {

  //const WorkersList({Key? key});

  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Edit Post'),
          actions: [],
        ),
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
                  "assets/images/Rec that Contain menu icon &profile (1).svg",
                  fit: BoxFit.cover,
                ),
              ),
              //menu button
              Positioned(
                top: 15,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Menu()));
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 40,
                  ),
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
              //profile pic
              Positioned(
                right: 15,
                top: 20,
                child: CircleAvatar(
                  radius: 25, // Adjust radius as needed
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              ListView(
                padding: EdgeInsets.symmetric(vertical: 100),
                children: [
                  FriendPost(
                    proPic: 'assets/images/profile.png',
                    proName: 'Ali Mohamed Omar ',
                  ),
                ],
              ),
              // Add Post Fields and Button
              Positioned(
                top: 200, // تعديل الارتفاع حسب الاحتياج
                left: 20, // تعديل المسافة من اليسار حسب الاحتياج
                right: 20,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText:
                                  'اهلا وسهلا, عندي مشكلة في حنفية المطبخ اريد نجار',
                              border: InputBorder.none,
                            ),
                            minLines: 3,
                            maxLines: 5,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.start, // يبدأ من اليسار
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              // Add functionality for upload photo/video button
                              print('Upload button pressed');
                            },
                            icon: Icon(Icons.photo),
                            label: Text('Upload photo/video'),
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
                          TextButton.icon(
                            onPressed: () {
                              // Add functionality for camera button
                              print('Camera button pressed');
                            },
                            icon: Icon(Icons.camera_alt),
                            label: Text('Camera'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 100, // تحديد العرض حسب الحاجة
                          height: 50, // تحديد الارتفاع حسب الحاجة
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Posts()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFBBA2BF),
                            ), // Change button color
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                color: Colors
                                    .black, // تغيير لون النص إلى اللون الأرجواني
                                fontSize: 20,
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
    required String proPic,
    required String proName,
  }) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.brown),
                  image: DecorationImage(
                    image: AssetImage(proPic),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      proName,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        height: 3.0,
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
