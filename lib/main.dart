import 'package:flutter/material.dart';
import 'package:grad_proj/pages/login.dart';
import 'package:grad_proj/pages/signUp.dart';
import 'package:grad_proj/pages/splashScreen.dart';
import 'package:grad_proj/pages/welcome.dart';

void main() {
  runApp(const MyApp());

}

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
          "/signUp": (context) => const SignUp(),
           
      },
    );
  }
}
