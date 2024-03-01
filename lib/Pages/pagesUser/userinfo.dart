// Remove the unused import statements
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grad_proj/Pages/pagesUser/MenuUser.dart';
import 'package:grad_proj/Pages/pagesUser/reqCategory.dart';

class Cutomerinfo extends StatefulWidget {
  const Cutomerinfo({Key? key}) : super(key: key);

  @override
  _CutomerinfoState createState() => _CutomerinfoState();
}

class _CutomerinfoState extends State<Cutomerinfo> {
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              // Purple foreground
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  "assets/images/foregroundPurpleSmall.svg",
                  fit: BoxFit.cover,
                ),
              ),

              // Menu button
              Positioned(
                top: 13,
                child: IconButton(
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),

              // Mr. house word
              Positioned(
                top: 15,
                left: 0,
                right: 0,
                child: Center(
                  child: SvgPicture.asset("assets/images/MR. House.svg"),
                ),
              ),

              // Profile Information Details
              Positioned(
                top: MediaQuery.of(context).size.height * 0.10,
                left: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      // Profile Image
                      const CircleAvatar(
                        radius: 55,
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                      ),
                      const SizedBox(height: 5),

                      // Worker Name
                      const Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // phoneNum
                          Container(
                            margin: const EdgeInsets.only(
                                left: 16), // Increased the left margin
                            child: const ListTile(
                              leading: Icon(Icons.phone),
                              title: Text(
                                "Phone Number:",
                                style: TextStyle(
                                  fontWeight: FontWeight
                                      .bold, // Make the phone number title bold
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),

// Worker num Text
                          Container(
                            margin: const EdgeInsets.only(
                                left: 16), // Increased the left margin
                            child: const Text(
                              "01224047524",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),

                          // Email
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 16), // Increased the left margin
                                child: const ListTile(
                                  leading: Icon(Icons.mail),
                                  title: Text(
                                    "Email:",
                                    style: TextStyle(
                                      fontWeight: FontWeight
                                          .bold, // Make the email title bold
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),

                              // Worker email Text
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 16), // Increased the left margin
                                child: const Text(
                                  "johndoe@example.com",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                            ],
                          ),
                        ],
                      ),

// Rating and Stars
                      Container(
                        margin: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: Icon(Icons.star,
                                  color: Color.fromRGBO(74, 74, 74, 1),
                                  size: 25), // Filled with black
                              title: Text(
                                "Rating:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                // Add your rating logic here, e.g., display stars based on a rating value
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star_border, color: Colors.yellow),
                                Icon(Icons.star_border, color: Colors.yellow),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      const SizedBox(
                        height: 20,
                        child: Row(
                          children: [],
                        ),
                      ),

                      // Social Media Icons in Row
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // WhatsApp
                            IconButton(
                              onPressed: () {
                                // Add your WhatsApp logic here
                              },
                              icon: _buildSocialMediaIcon(0),
                            ),

                            // Messenger
                            IconButton(
                              onPressed: () {
                                // Add your Messenger logic here
                              },
                              icon: _buildSocialMediaIcon(1),
                            ),

                            // Telegram
                            IconButton(
                              onPressed: () {
                                // Add your Telegram logic here
                              },
                              icon: _buildSocialMediaIcon(2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),


        // FloatingActionButton
        floatingActionButton: FloatingActionButton(
          onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => ReqCategory()));
          },
          backgroundColor: const Color(0xFFBBA2BF),
          shape: const CircleBorder(),
          child: const Icon(Icons.add_chart_rounded),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }

  Widget _buildSocialMediaIcon(int index) {
    List<IconData> icons = [
      FontAwesomeIcons.whatsapp,
      FontAwesomeIcons.facebookMessenger,
      FontAwesomeIcons.telegram,
    ];

    List<Color> colors = [
      Colors.green,
      Colors.blue,
      Colors.lightBlue,
    ];

    return FaIcon(
      icons[index],
      size: 30,
      color: colors[index],
    );
  }
}
