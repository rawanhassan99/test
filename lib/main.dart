import 'package:flutter/material.dart';
import 'package:grad_proj/pages/login.dart';
import 'package:grad_proj/pages/SignUp.dart';
import 'package:grad_proj/pages/splashScreen.dart';
import 'package:grad_proj/pages/welcome.dart';
import 'package:grad_proj/pages/workerslist.dart';

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
      initialRoute: "/login" ,
      routes: {
        "/": (context) => const SplashScreen(),
         "/welcome": (context) => const Welcome(),
         "/login": (context) => const Login(),
          "/signup": (context) => const SignUp(),
          "/workerslist": (context) =>  WorkersList(),
           
      },
    );
  }
}
