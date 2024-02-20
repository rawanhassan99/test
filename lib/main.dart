import 'package:flutter/material.dart';
import 'package:grad_proj/pages/curved_navigation_bar.dart';
import 'package:grad_proj/pages/favorites.dart';
import 'package:grad_proj/pages/history.dart';
import 'package:grad_proj/pages/login.dart';
import 'package:grad_proj/pages/SignUp.dart';
import 'package:grad_proj/pages/responds.dart';
import 'package:grad_proj/pages/splashScreen.dart';
import 'package:grad_proj/pages/welcome.dart';
import 'package:grad_proj/pages/workerInfo.dart';
import 'package:grad_proj/pages/workerslist.dart';
import 'package:grad_proj/pages/responds.dart';

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
      initialRoute: "/workerslist",
      routes: {
        "/": (context) => const SplashScreen(),
        "/welcome": (context) => const Welcome(),
        "/login": (context) => const Login(),
        "/signup": (context) => const SignUp(),
        "/workerslist": (context) => WorkersList(),
        //"/workerInfo": (context) =>  WorkerInfo(),
        "/responds": (context) => Responds(),
        "/favorites": (context) => Favorites(),
        "/history": (context) => History(),
       // "/nav_bar": (context) => Bottom_nav_bar(),
      },
    );
  }
}
