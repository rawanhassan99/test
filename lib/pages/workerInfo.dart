// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:grad_proj/pages/HomeScreen.dart';
// import 'package:grad_proj/pages/workerslist.dart';
// class WorkerInfo extends StatefulWidget {
//   final int itemCount;
//   WorkerInfo(this.worker,this.itemCount);

//   @override
//   _WorkersListState createState() => _WorkersListState();
// }

// class _WorkersListState extends State<WorkerInfo> {
//   int _currentIndex = 0;
//   //const WorkersList({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SizedBox(
//             width: double.infinity,
//             height: double.infinity,
//             child: Stack(children: [
//               //purple foreground
//               Positioned(
//                 top: 0,
//                 right: 0,
//                 left: 0,
//                 child: SvgPicture.asset(
//                   "assets/images/foregroundPurpleSmall.svg",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               //Menu button
//               Positioned(
//                 left: 3,
//                 top: 9,
//                 child: IconButton(
//                     onPressed: () {
//                       // Navigator.pushNamed(context, "/signup");
//                     },
//                     icon: Icon(
//                       Icons.menu,
//                       color: Colors.white,
//                       size: 40,
//                     )),
//               ),
//               //Mr. house word
//               Positioned(
//                 top: 15,
//                 left: 0,
//                 right: 0,
//                 child: Center(
//                   child: SvgPicture.asset("assets/images/MR. House.svg"),
//                 ),
//               ),

//               //profile pic
//               Positioned(
//                 right: 15,
//                 top: 15,
//                 child: CircleAvatar(
//                   radius: 25, // Adjust radius as needed
//                   backgroundImage: AssetImage('assets/images/profile.png'),
//                 ),
//               ),
              
              

//                  Column(
//                       children: [
//                         Container(
//                           height: 140,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             color: Color.fromARGB(31, 125, 124, 124),
//                             borderRadius: BorderRadius.circular(20.0),
//                             border: Border.all(
//                               color: Colors.black26,
//                               width: 2.0,
//                             ),
//                           ),
//                           //photo and worker info
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.symmetric(horizontal: 10),
//                               ),

//                               CircleAvatar(
//                                 radius: 35,
//                                 backgroundImage:
//                                     AssetImage('assets/images/profile.png'),
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ), // Add spacing between avatar and text
//                               Expanded(
//                                 //info about worker
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       worker[itemCount]['name'],
//                                       style: TextStyle(
//                                         fontSize: 22,
//                                         fontWeight: FontWeight.w500,
//                                         fontFamily: "Raleway",
//                                         color: Colors.black,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     Text(
//                                       worker[itemCount]['Type'],
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                         fontFamily: "Raleway",
//                                         color: Colors.black87,
//                                       ),
//                                     ),
//                                     Text(
//                                       worker[widget.itemCount]['Number'],
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                         fontFamily: "Raleway",
//                                         color: Colors.black87,
//                                       ),
//                                     ),
//                                     SizedBox(height: 10),
//                                     //button
//                                     Align(
//                                       alignment: Alignment.center,
//                                       child: ElevatedButton(
//                                         onPressed: () {},
//                                         style: ButtonStyle(
//                                           backgroundColor:
//                                               MaterialStateProperty.all(
//                                                   Color(0xFFBBA2BF)),
//                                           padding: MaterialStateProperty.all(
//                                             EdgeInsets.symmetric(
//                                                 horizontal: 50, vertical: 5),
//                                           ),
//                                           shape: MaterialStateProperty.all(
//                                             RoundedRectangleBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(27),
//                                             ),
//                                           ),
//                                         ),
//                                         child: Text(
//                                           "Details",
//                                           style: TextStyle(
//                                             fontSize: 17,
//                                             color: Colors.black,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         )
//                       ],
//                     );
              
// //                Center(
// //  child: Text('${widget.itemCount}',style:TextStyle(color: Colors.black)),

// //                )
            
//             ])),
      
         
//         //nav bar
//         bottomNavigationBar: CurvedNavigationBar(
//           items: [
//             Icon(
//               Icons.home,
//               size: 35,
//               color: Color(
//                 0xFFE9E9E9,
//               ),
//             ),
//             Icon(
//               Icons.favorite,
//               size: 35,
//               color: Colors.white,
//             ),
//             Icon(
//               Icons.support_agent,
//               size: 35,
//               color: Colors.white,
//             ),
//             Icon(
//               Icons.notifications,
//               size: 35,
//               color: Colors.white,
//             ),
//             Icon(
//               Icons.handshake,
//               size: 35,
//               color: Colors.white,
//             ),
//           ],
//           color: Color(
//             (0xFFBBA2BF),
//           ),
//           height: 55,
//           backgroundColor: Colors.transparent,
//           onTap: (index) {
//             setState(() {
//               _currentIndex = index;
//             });
//           },
//           index: _currentIndex,
//         ),
//       ),
//     );
//   }
// }



             //  Column(
                    //   children: [
                    //     Container(
                    //       height: 140,
                    //       width: double.infinity,
                    //       decoration: BoxDecoration(
                    //         color: Color.fromARGB(31, 125, 124, 124),
                    //         borderRadius: BorderRadius.circular(20.0),
                    //         border: Border.all(
                    //           color: Colors.black26,
                    //           width: 2.0,
                    //         ),
                    //       ),
                    //       //photo and worker info
                    //       child: Row(
                    //         children: [
                    //           Padding(
                    //             padding: EdgeInsets.symmetric(horizontal: 10),
                    //           ),

                    //           CircleAvatar(
                    //             radius: 35,
                    //             backgroundImage:
                    //                 AssetImage('assets/images/profile.png'),
                    //           ),
                    //           SizedBox(
                    //             width: 20,
                    //           ), // Add spacing between avatar and text
                    //           Expanded(
                    //             //info about worker
                    //             child: Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               mainAxisAlignment: MainAxisAlignment.center,
                    //               children: [
                    //                 Text(
                    //                   worker[itemCount]['name'],
                    //                   style: TextStyle(
                    //                     fontSize: 22,
                    //                     fontWeight: FontWeight.w500,
                    //                     fontFamily: "Raleway",
                    //                     color: Colors.black,
                    //                   ),
                    //                 ),
                    //                 SizedBox(
                    //                   height: 5,
                    //                 ),
                    //                 Text(
                    //                   worker[itemCount]['Type'],
                    //                   style: TextStyle(
                    //                     fontSize: 16,
                    //                     fontFamily: "Raleway",
                    //                     color: Colors.black87,
                    //                   ),
                    //                 ),
                    //                 Text(
                    //                   worker[itemCount]['Number'],
                    //                   style: TextStyle(
                    //                     fontSize: 16,
                    //                     fontFamily: "Raleway",
                    //                     color: Colors.black87,
                    //                   ),
                    //                 ),
                    //                 SizedBox(height: 10),
                    //                 //button
                    //                 Align(
                    //                   alignment: Alignment.center,
                    //                   child: ElevatedButton(
                    //                     onPressed: () {},
                    //                     style: ButtonStyle(
                    //                       backgroundColor:
                    //                           MaterialStateProperty.all(
                    //                               Color(0xFFBBA2BF)),
                    //                       padding: MaterialStateProperty.all(
                    //                         EdgeInsets.symmetric(
                    //                             horizontal: 50, vertical: 5),
                    //                       ),
                    //                       shape: MaterialStateProperty.all(
                    //                         RoundedRectangleBorder(
                    //                           borderRadius:
                    //                               BorderRadius.circular(27),
                    //                         ),
                    //                       ),
                    //                     ),
                    //                     child: Text(
                    //                       "Details",
                    //                       style: TextStyle(
                    //                         fontSize: 17,
                    //                         color: Colors.black,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       height: 5,
                    //     )
                    //   ],
                    // );
                 
               