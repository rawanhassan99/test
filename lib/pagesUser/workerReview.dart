// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';




class WorkerReview extends StatelessWidget {
  const WorkerReview({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          // child: Text("   review     "),
           
                                      child: Text(
                                        "WorkerReview",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                      ),
                                  
        )
      ),
    );
  }
}