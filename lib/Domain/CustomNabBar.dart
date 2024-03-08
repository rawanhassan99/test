// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final GlobalKey<ScaffoldState> scaffoldKey;

//   const CustomAppBar({
//     Key? key,
//     required this.scaffoldKey,
//   }) : super(key: key);

//   @override
//   Size get preferredSize => Size.fromHeight(60.0);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       automaticallyImplyLeading: false, // This removes the back button
//       backgroundColor: Color(0xFFBBA2BF),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(15),
//           bottomRight: Radius.circular(15),
//         ),
//       ),
//       title: Row(
//         children: [
//           IconButton(
//             onPressed: () {
//               scaffoldKey.currentState?.openDrawer(); // Open the drawer
//             },
//             icon: const Icon(
//               Icons.menu,
//               color: Colors.white,
//               size: 40,
//             ),
//           ),
//           Spacer(), // Add space to center the image
//           Image.asset(
//             'assets/images/MR. House.png',
//             width: 80, // Adjust width as needed
//             height: 60, // Adjust height as needed
//           ), // Replace 'MR. House.png' with your image asset path
//           Spacer(), // Add space to separate the image and the profile picture
//           GestureDetector(
//             onTap: () {
//               // Handle profile picture tap
//             },
//             child: CircleAvatar(
//               radius: 20, // Adjust radius as needed
//               backgroundImage: AssetImage(
//                 'assets/images/profile.png',
//               ),
//             ),
//           ), // Replace 'profile.png' with your profile picture asset path
//         ],
//       ),
//     );
//   }
// }