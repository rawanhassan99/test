// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(
        child: Center(
          child: Text("post"),
        )
         ),
     );
  }
}