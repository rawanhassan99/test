


import 'package:flutter/material.dart';
import 'package:grad_proj/adminchat.dart';


//import 'package:grad_proj/pages/favorites.dart';


import 'package:grad_proj/pagesUser/BNavBarPages/post.dart';

import 'package:grad_proj/pagesWorker/home.dart';
import 'package:grad_proj/pagesWorker/notificationsWorker.dart';

import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
// Main Navigation Screen
class BottomNavBarWorker extends StatefulWidget {
  const BottomNavBarWorker({Key? key}) : super(key: key);

  @override
  State<BottomNavBarWorker> createState() => _BottomNavBarWorkerState();
}

class _BottomNavBarWorkerState extends State<BottomNavBarWorker> {
  final _controller = PersistentTabController(initialIndex: 0);

  List<Widget> screens() {
    return  [
             HomeWoker(),
 
       AdminChat(),
       alartsWorker(),
       Posts(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarItems() {
    
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.black87,
        inactiveColorPrimary: Colors.white,
         iconSize: 28,
        textStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
       
      ),
   
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.support_agent),
        title: "Admin Chat",
        activeColorPrimary: Colors.black87,
        inactiveColorPrimary: Colors.white,
         iconSize: 28,
        textStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.notifications),
        title: "Notifications",
        activeColorPrimary: Colors.black87,
        inactiveColorPrimary: Colors.white,
         iconSize: 28,
        textStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
      ),
       PersistentBottomNavBarItem(
          icon: const Icon(Icons.handshake),
          title: "Social Media",
           iconSize: 28,
        textStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
          activeColorPrimary: Colors.black87,
          inactiveColorPrimary: Colors.white),
          
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: screens(),
      items: navBarItems(),
      controller: _controller,
      navBarStyle: NavBarStyle.style1,
      popAllScreensOnTapOfSelectedTab: true,
      backgroundColor:  Color(0xFFBBA2BF),
      
      
      
    );
  }
}
