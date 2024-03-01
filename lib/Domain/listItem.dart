// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ListItem extends StatelessWidget {
  final Map<String, dynamic> worker;
  final VoidCallback? onButtonPressed;
  final int pageIndex;
  final Widget? trailingWidget;

  const ListItem({
    Key? key,
    required this.worker,
    required this.pageIndex,
    this.trailingWidget,
     this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> Pages = [
  '/',
  '/page2',
  '/page3',
  '/page4',
  '/page5',
  '/page6',
  '/page7',
];
    bool shouldDisplayWorkerType =
        pageIndex != 4; // Check if it's not the fourth page

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFEAE0E0),
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.black26,
            width: 2.0,
          ),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(2),
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //profile
              SizedBox(
                width: 65,
                height: 55,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ),
            ],
          ),
          //name
          title: Text(
            worker['name'] ?? 'N/A',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              fontFamily: "Raleway",
              color: Colors.black,
            ),
          ),
          //info and button
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (shouldDisplayWorkerType)
                Text(
                  worker['Type'] ?? 'N/A',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Raleway",
                    color: Colors.black87,
                  ),
                ),
              if (!shouldDisplayWorkerType)
                Text(
                  'Expected Commission Fee : ${worker['Commission Fee']}',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Quantico",
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),
              Row(
                children: [
                  Text(
                    worker['Number'] ?? 'N/A',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Raleway",
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(width: 26),
                  RatingBar.builder(
                    initialRating: worker['Rating'] != null
                        ? worker['Rating'].toDouble()
                        : 0.0,
                    minRating: 1,
                    maxRating: 5,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    unratedColor: Colors.grey,
                    itemCount: 5,
                    itemSize: 20.0,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: ElevatedButton(
                    onPressed: onButtonPressed,
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFBBA2BF)),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27),
                        ),
                      ),
                    ),
                    child: Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          trailing: trailingWidget,
        ),
      ),
    );
  }
}
