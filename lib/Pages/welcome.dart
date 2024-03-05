// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:the_proj_on_github/Pages/pagesUser/login.dart';
import 'package:the_proj_on_github/Pages/pagesWorker/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBBA2BF),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 320,
                height: 500,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F3F3),
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                    color: Colors.black26,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 100,
                        height: 120,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFBBA2BF),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/userlogo.png',
                                // Path to user 1 logo image
                                height: 50,
                              ),
                              const Text('User'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: 100,
                        height: 120,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginWorker()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFBBA2BF),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/workerlogo.png',
                                // Path to user 2 logo image
                                height: 50,
                              ),
                              const Text('Worker'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
