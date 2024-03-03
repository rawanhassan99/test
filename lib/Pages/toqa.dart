import 'package:flutter/material.dart';

class PatientHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Worker History'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 154, 150, 150).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/workerlogo.jpg'),
                ),
                SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Worker Name',
                      style: TextStyle(fontSize: 24.0),
                    ),
                    Text(' Worker Number: XXX'),
                    Text('Last Appointment Date: YYYY-MM-DD'),
                    Text('Amount Paid: ZZZ'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Icon(Icons.calendar_today),
                SizedBox(width: 10.0),
                Text('Date: YYYY-MM-DD'),
                SizedBox(width: 20.0),
                Icon(Icons.access_time),
                SizedBox(width: 10.0),
                Text('Time: HH:MM'),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(Icons.photo),
                SizedBox(width: 10.0),
                Text('Picture Here'),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(Icons.attach_money),
                SizedBox(width: 10.0),
                Text('xXXX'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
