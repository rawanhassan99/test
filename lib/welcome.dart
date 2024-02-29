import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose User or Worker'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey[200],
          padding: const EdgeInsets.all(200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // Handle user 1 selection
                },
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/userlogo.png", // Path to user 1 logo image
                      height: 30,
                    ),
                    const Text('User '),
                  ],
                ),
              ),
              const SizedBox(width: 50),
              ElevatedButton(
                onPressed: () {
                  // Handle user 2 selection
                },
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/workerlogo.png", // Path to user 2 logo image
                      height: 50,
                    ),
                    const Text('Worker'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
