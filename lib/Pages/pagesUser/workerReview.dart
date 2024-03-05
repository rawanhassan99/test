// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:the_proj_on_github/Pages/menu.dart';

import '../../Domain/customAppBar.dart';

class WorkerReview extends StatefulWidget {
  const WorkerReview({Key? key}) : super(key: key);
  static String routeName = 'workerreview';

  @override
  _WorkerReviewState createState() => _WorkerReviewState();
}

class _WorkerReviewState extends State<WorkerReview> {
  double rating = 5; // Initial rating value
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
        scaffoldKey: _scaffoldKey,
        showSearchBox: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.report_gmailerrorred_outlined,
                size: 50,
              )),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 198, 196, 196),
              borderRadius: BorderRadius.circular(10.0 * 2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 50.0,
                      minRadius: 50.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/images/logo.png'),
                    ),
                    SizedBox(width: 4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Worker Details',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 1),
                        Text(
                          'Worker Type',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '012346789',
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.chat_bubble),
                    Icon(Icons.phone),
                    Icon(Icons.favorite),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Rate the Worker:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor:
                  Colors.amber, // Set gold color for the active track
              thumbColor: Colors.amber, // Set gold color for the thumb
              overlayColor: Colors.amber
                  .withOpacity(0.3), // Set gold color for the overlay
              inactiveTrackColor:
                  Colors.grey, // Set grey color for the inactive track
            ),
            child: Slider(
              value: rating,
              min: 1,
              max: 5,
              divisions: 4,
              onChanged: (value) {
                setState(() {
                  rating = value;
                });
              },
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Leave a Review:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your review/comments here...',
              border: OutlineInputBorder(),
            ),
            maxLines: null, // Allow multiple lines for longer comments
          ),
        ],
      ),
      drawer: Menu(
        scaffoldKey: _scaffoldKey,
      ),
    );
  }
}
