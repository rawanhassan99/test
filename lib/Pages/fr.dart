// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Facebook Menu',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Facebook'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Menu',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.home),
//               title: const Text('Home'),
//               onTap: () {
//                 // Navigate to the home page.
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.people),
//               title: const Text('Friends'),
//               onTap: () {
//                 // Navigate to the friends page.
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.message),
//               title: const Text('Messages'),
//               onTap: () {
//                 // Navigate to the messages page.
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.notifications),
//               title: const Text('Notifications'),
//               onTap: () {
//                 // Navigate to the notifications page.
//               },
//             ),
//                ListTile(
//               leading: const Icon(Icons.settings),
//               title: const Text('Settings'),
//               onTap: () {
//                 // Navigate to the settings page.
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.logout),
//               title: const Text('Logout'),
//               onTap: () {
//                 // Logout the user.
//               },
//             ),
//           ],
//         ),
//       ),
//       body: const Center(
//         child: Text(
//           'Welcome to Facebook!',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
