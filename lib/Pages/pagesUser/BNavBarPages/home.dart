import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:grad_proj/Pages/pagesUser/BNavBarPages/workerslist.dart';
import 'package:grad_proj/Pages/pagesUser/reqCategory.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  List<String> catNames = [
    'Carpenters',
    'Plumbers',
    'Electricians',
    'Painters',
    'Tilers',
    'Plastering Contractors',
    'Appliance Repair Technician',
    'Alumetal Technicians',
    'Marble Craftsmen'
  ];

  List<Color> catColors = [
    const Color(0xFFBBA2BF),
    const Color(0xFFBBA2BF),
    const Color(0xFFBBA2BF),
    const Color(0xFFBBA2BF),
    const Color(0xFFBBA2BF),
    const Color(0xFFBBA2BF),
    const Color(0xFFBBA2BF),
    const Color(0xFFBBA2BF),
    const Color(0xFFBBA2BF),
  ];

  List<String> catImages = [
    //   "assets/images/categories/carpenter.jpg",
    // "assets/images/man.jpg",
    // "assets/images/categories/electricians.jpg",
    // "assets/images/categories/painter.jpg",
    // "assets/images/categories/tiler.jpeg",
    // "assets/images/categories/Plastering.jpeg",
    // "assets/images/categories/Appliance Repair Technician.jpeg",
    // "assets/images/categories/Alumetal Technicians.jpeg",
    // "assets/images/categories/Marble Craftsmen.jpg",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.zero,
            decoration: const BoxDecoration(
              color: Color(0xFFBBA2BF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: SvgPicture.asset(
                    "assets/images/Rec that Contain menu icon &profile.svg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 13,
                  child: IconButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, "/signup");
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: SvgPicture.asset("assets/images/MR. House.svg"),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 90.0, right: 30, left: 30, bottom: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Search technican name",
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  right: 15,
                  top: 15,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 15,
                    mainAxisExtent: 125),
                itemCount: catNames.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  WorkersList()));
                    },
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: catColors[index],
                              shape: BoxShape.rectangle,
                            ),
                            child: Image.asset(
                              catImages[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            catNames[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ReqCategory()));
        },
        backgroundColor: const Color(0xFFBBA2BF),
        shape: const CircleBorder(),
        child: const Icon(Icons.add_chart_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
