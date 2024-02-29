
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_proj/pagesUser/MenuUser.dart';
import 'package:grad_proj/pagesUser/reqCategory.dart';


//import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Req extends StatefulWidget {
  const Req({Key? key}) : super(key: key);

  @override
  State<Req> createState() => _ReqState();
}

class _ReqState extends State<Req> {
  String _date = '';
  String _time = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Menu(),
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                bottom: 300,
                child: SvgPicture.asset(
                  'assets/images/Rec that Contain menu icon &profile.svg',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 13,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Positioned(
                top: 7,
                left: 0,
                right: 0,
                child: Center(
                  child: SvgPicture.asset('assets/images/MR. House.svg'),
                ),
              ),
              const Positioned(
                right: 15,
                top: 15,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/man3.jpg'),
                ),
              ),
              Center(
                child: Stack(children: [
                  Container(
                    width: 350,
                    height: 550,
                    decoration: BoxDecoration(
                        color: const Color(
                            0xFFF5F3F3), // Replace with your desired color
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: Colors.black26, width: 2)),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 15, right: 15, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const ListTile(
                                      leading: Icon(Icons.date_range),
                                      title: Text(
                                        'Date*',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0),
                                      ),
                                      //  onTap: () {
                                      // Handle settings tap
                                      //},
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: "dd/mm/yy",
                                        labelStyle: TextStyle(fontSize: 12.0),
                                        contentPadding: EdgeInsets.zero,
                                        // hintText: 'dd/mm/yy',
                                        // hintStyle: TextStyle(fontSize: 12.0),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter a date.';
                                        }
                                        return null;
                                      },
                                      onTap: () {
                                        //  _selectDate(context);
                                      },
                                      controller:
                                          TextEditingController(text: _date),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 14.0),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const ListTile(
                                      leading: Icon(Icons.access_time),
                                      title: Text(
                                        'Time*',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0),
                                      ),
                                      //  onTap: () {
                                      // Handle settings tap
                                      //},
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: "00:00",
                                        labelStyle: TextStyle(fontSize: 12.0),
                                        contentPadding: EdgeInsets.zero,
                                        //  hintText: '00:00',
                                        //hintStyle: TextStyle(fontSize: 12.0),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter a time.';
                                        }
                                        return null;
                                      },
                                      onTap: () {
                                        //  _selectTime(context);
                                      },
                                      controller:
                                          TextEditingController(text: _time),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 14.0),
                          InkWell(
                            onTap: () {
                              // Handle address icon tap
                              // Implement your logic here for the action when the address icon is clicked
                            },
                            child: const Row(
                              children: [
                                Icon(Icons.location_on),
                                SizedBox(width: 8.0),
                                Text(
                                  'Address*',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText:
                                  "Enter your address Or select on location",
                              labelStyle: TextStyle(fontSize: 12.0),
                              contentPadding: EdgeInsets.zero,
                              //hintText:
                              //  'Enter your address Or select on location',
                              //hintStyle: TextStyle(fontSize: 12.0),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter an address';
                              }
                              return null;
                            },
                            onSaved: (value) {},
                          ),
                          const SizedBox(height: 14.0),
                          const Text('Description of the problem*',
                              style: TextStyle(fontSize: 13.0)),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Write the problem...",
                              labelStyle: const TextStyle(fontSize: 12.0),
                              contentPadding: EdgeInsets.zero,
                              // hintText: 'write the problem...',
                              //hintStyle: const TextStyle(fontSize: 12.0),
                              fillColor:
                                  const Color.fromARGB(255, 233, 237, 241),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please write a description.';
                              }
                              return null;
                            },
                            onSaved: (value) {},
                          ),
                          ListTile(
                            leading: const Icon(Icons.camera_alt_outlined),
                            title: const Text(
                              'upload photo',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 14.0),
                            ),
                            onTap: () {
                              // Handle settings tap
                            },
                          ),

                          const SizedBox(height: 14.0),
                          const ListTile(
                            leading: Icon(Icons.money),
                            title: Text(
                              'Expected commission fee [optional]',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.0),
                            ),
                            //  onTap: () {
                            // Handle settings tap
                            //},
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Egyptian Pound",
                              labelStyle: TextStyle(fontSize: 12.0),
                              contentPadding: EdgeInsets.zero,
                              // hintText: 'Egyptian pound',
                              //hintStyle: TextStyle(fontSize: 12.0),
                            ),
                            keyboardType: TextInputType.number,
                            onSaved: (value) {},
                          ),
                          const SizedBox(height: 14.0),
                          //  const Divider(),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor:
                                      const Color.fromARGB(234, 0, 0, 0),
                                  backgroundColor: const Color(0xFFBBA2BF),
                                ),
                                child: const Text('Book'),
                                onPressed: () {
                                  // Handle button tap
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ]),
              )
            ])),
  floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ReqCategory()));
          },
          child: const Icon(Icons.add_chart_rounded),
          backgroundColor: const Color(0xFFBBA2BF),
          shape: const CircleBorder(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
