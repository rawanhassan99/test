// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserReview extends StatelessWidget {
  const UserReview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
      
        child: Text(
          "UserReview",
          style: TextStyle(
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ),
    ));
  }
}
