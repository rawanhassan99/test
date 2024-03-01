 import 'package:flutter/material.dart';
import 'package:grad_proj/Pages/pagesUser/history.dart';
import 'package:grad_proj/Pages/pagesUser/login.dart';
import 'package:grad_proj/Pages/pagesUser/signup.dart';
import 'package:grad_proj/Pages/pagesWorker/signup.dart';


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
    //  initialRoute: "/historyUser",
      home:  Login(),
      routes: {
     
        //"/login": (context) => const Login(),
       
       "/historyUser": (context) =>  History(),
               "/signupworker": (context) => SignUpWorker(),
               "/signupUser": (context) => SignUpUser(),
       //"/nav_bar": (context) => Bottom_nav_bar(),
      },
    );
  }
}
