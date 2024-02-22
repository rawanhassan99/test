import 'package:flutter/material.dart';
import 'package:grad_proj/pages/emergencyResponds.dart';
//import 'package:grad_proj/pages/curved_navigation_bar.dart';
import 'package:grad_proj/pages/favorites.dart';
import 'package:grad_proj/pages/history.dart';
import 'package:grad_proj/pages/login.dart';

import 'package:grad_proj/pages/responds.dart';
import 'package:grad_proj/pages/signup.dart';

import 'package:grad_proj/pages/workerslist.dart';
import 'package:grad_proj/pagesWorker/History.dart';
import 'package:grad_proj/pagesWorker/home.dart';
import 'package:grad_proj/pagesWorker/login.dart';
import 'package:grad_proj/pagesWorker/signup.dart';

void main() {
  runApp(const MyApp());
}

// Color(0xFFBBA2BF)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/loginworker",
      routes: {
     
        "/login": (context) => const Login(),
       
        "/workerslist": (context) => WorkersList(),
      
        "/responds": (context) => Responds(),
        "/favorites": (context) => Favorites(),
        "/history": (context) => History(),
         "/emergencyresponse": (context) => EmergencyResponds(),
         "/homeworker": (context) => HomeWoker(),
          "/historyworker": (context) => HistoryWorker(),
          "/signup": (context) => SignUpUser(),
             "/loginworker": (context) => LoginWorker(),
              // "/signupworker": (context) => SignUpWorker(),
       //"/nav_bar": (context) => Bottom_nav_bar(),
      },
    );
  }
}
