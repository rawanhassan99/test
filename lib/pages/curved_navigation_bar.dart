// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:grad_proj/pages/favorites.dart';
// import 'package:grad_proj/pages/history.dart';
// import 'package:grad_proj/pages/responds.dart';
// import 'package:grad_proj/pages/splashscreen.dart';
// import 'package:grad_proj/pages/workerslist.dart';

// class Bottom_nav_bar extends StatefulWidget {
//   Bottom_nav_bar({Key? key}) : super(key: key);

//   @override
//   _Bottom_nav_barState createState() => _Bottom_nav_barState();
// }

// class _Bottom_nav_barState extends State<Bottom_nav_bar> {
//   int _currentIndex = 0;
//   //const WorkersList({Key? key});

//   final List<Widget> pages = [
//     WorkersList(),
//     Favorites(),
//     History(),
//     Responds(),
//     SplashScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           _getPage(_currentIndex),
//           Positioned(
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: CurvedNavigationBar(
//               items: [
//                 Icon(
//                   Icons.home,
//                   size: 35,
//                   color: Color(
//                     0xFFE9E9E9,
//                   ),
//                 ),
//                 Icon(
//                   Icons.favorite,
//                   size: 35,
//                   color: Colors.white,
//                 ),
//                 Icon(
//                   Icons.support_agent,
//                   size: 35,
//                   color: Colors.white,
//                 ),
//                 Icon(
//                   Icons.notifications,
//                   size: 35,
//                   color: Colors.white,
//                 ),
//                 Icon(
//                   Icons.handshake,
//                   size: 35,
//                   color: Colors.white,
//                 ),
//               ],
//               color: Color(
//                 (0xFFBBA2BF),
//               ),
//               height: 55,
//               backgroundColor: Colors.transparent,
//               onTap: (index) {
//                 setState(() {
//                   _currentIndex = index;
//                 });
//               },
//               index: _currentIndex,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _getPage(int index) {
//     switch (index) {
//       case 0:
//         return WorkersList();
//       case 1:
//         return Favorites();
//       case 2:
//         return History();
//       case 3:
//         return Responds();
//       case 4:
//         return SplashScreen();
//       default:
//         return WorkersList();
//     }
//   }
// }
