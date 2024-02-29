import 'package:flutter/material.dart';
import 'package:grad_proj/pagesUser/BNavBarPages/bottom.dart';
import 'package:grad_proj/pagesUser/MenuUser.dart';
import 'package:grad_proj/pagesUser/emergencyResponds.dart';

import 'package:grad_proj/pagesUser/BNavBarPages/favorites.dart';
import 'package:grad_proj/pagesUser/history.dart';
import 'package:grad_proj/pagesUser/login.dart';

import 'package:grad_proj/pagesUser/BNavBarPages/responds.dart';
import 'package:grad_proj/pagesUser/signup.dart';
import 'package:grad_proj/pagesUser/userinfo.dart';
import 'package:grad_proj/pagesUser/workerReview.dart';

import 'package:grad_proj/pagesUser/BNavBarPages/workerslist.dart';
import 'package:grad_proj/pagesWorker/History.dart';
import 'package:grad_proj/pagesWorker/MenuWorker.dart';
import 'package:grad_proj/pagesWorker/home.dart';
import 'package:grad_proj/pagesWorker/login.dart';
import 'package:grad_proj/pagesWorker/signup.dart';
import 'package:grad_proj/pagesWorker/workerInfo.dart';
import 'package:grad_proj/pagesWorker/workerRequest.dart';
import 'package:grad_proj/splashscreen.dart';
import 'package:grad_proj/workerUserChat.dart';

void main() {
  runApp(const MyApp());
}

// Color(0xFFBBA2BF)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    //  initialRoute: "/login",
    home: LoginWorker(),
      routes: {
     
       // "/login": (context) => const Login(),      
      //   "/workerslist": (context) => WorkersList(),
      //   "/responds": (context) => Responds(),
      //   //"/favorites": (context) => Favorites(),
      //   "/history": (context) => History(),
      //    "/emergencyresponse": (context) => EmergencyResponds(),
      //    "/homeworker": (context) => HomeWoker(),
      //     "/historyworker": (context) => HistoryWorker(),
      //     "/signup": (context) => SignUpUser(),
      //        "/loginworker": (context) => LoginWorker(),
      //        //  "/signupworker": (context) => SignUpWorker(),
      //  "/nav_bar": (context) => BottomNavBar(),
      },
  
    );
  }
}
