import 'package:flutter/material.dart';
import 'package:the_proj_on_github/Pages/pagesUser/BNavBarPages/workerslist.dart';
import 'package:the_proj_on_github/Pages/pagesUser/history.dart';
import 'package:the_proj_on_github/Pages/pagesUser/reqEmergency.dart';
import 'package:the_proj_on_github/Pages/pagesUser/workerReview.dart';
import 'package:the_proj_on_github/Pages/welcome.dart';

import '../Domain/customAppBar.dart';

class MenuDrawerPage extends StatefulWidget {
  const MenuDrawerPage({Key? key}) : super(key: key);

  @override
  _MenuDrawerPageState createState() => _MenuDrawerPageState();
}

class _MenuDrawerPageState extends State<MenuDrawerPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(scaffoldKey: _scaffoldKey),
      drawer: Menu(scaffoldKey: _scaffoldKey),
    );
  }
}

class Menu extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const Menu({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: FractionallySizedBox(
        alignment: Alignment.topCenter,
        child: Container(
          color: const Color(0xFFBBA2BF),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: const Icon(Icons.close_rounded),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color(0xFFBBA2BF),
                  ),
                  child: Container(
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Farha Ghallab',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.person_outlined),
                  title: const Text(
                    'Profile',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  onTap: () {
                    // Handle profile tap
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.calendar_month_outlined),
                  title: const Text(
                    'History',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => History()),
                    );
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.map_outlined),
                  title: const Text(
                    'Emergency',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReqEmergency()),
                    );
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.info_outline),
                  title: const Text(
                    'AboutApp',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  onTap: () {
                    // Handle information tap
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.settings_outlined),
                  title: const Text(
                    'Settings',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  onTap: () {
                    // Handle settings tap
                  },
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(45),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color.fromARGB(234, 0, 0, 0),
                        backgroundColor: Colors.white,
                      ),
                      child: Text('Log Out'),
                      onPressed: () => navigateToPage1(context, Welcome())
                      // Handle log out button tap

                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
