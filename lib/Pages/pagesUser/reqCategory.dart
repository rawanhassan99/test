
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_proj/Pages/pagesUser/MenuUser.dart';


class ReqCategory extends StatefulWidget {
  const ReqCategory({super.key});

  @override
  State<ReqCategory> createState() => _ReqCategoryState();
}

class _ReqCategoryState extends State<ReqCategory> {
  final String _date = '';
  final String _time = '';
  get _formKey => GlobalKey<FormState>();
// Declare _selectedCatego

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Menu(),
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
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ),
              Center(
                child: Stack(children: [
                  Container(
                    width: 350,
                    height: 560,
                    decoration: BoxDecoration(
                        color: const Color(
                            0xFFF5F3F3), // Replace with your desired color
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: Colors.black26, width: 2)),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 0, left: 15, right: 15, bottom: 20),
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
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: "dd/mm/yy",
                                        labelStyle: TextStyle(fontSize: 12.0),
                                        contentPadding: EdgeInsets.zero,
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter a date.';
                                        }
                                        return null;
                                      },
                                      onTap: () {
                                        // _selectDate(context);
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
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: "00:00",
                                        labelStyle: TextStyle(fontSize: 12.0),
                                        contentPadding: EdgeInsets.zero,
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter a time.';
                                        }
                                        return null;
                                      },
                                      onTap: () {
                                        // _selectTime(context);
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
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText:
                                  "Enter your address or select a location",
                              labelStyle: TextStyle(fontSize: 12.0),
                              contentPadding: EdgeInsets.zero,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter an address.';
                              }
                              return null;
                            },
                            onSaved: (value) {},
                          ),

                          const SizedBox(height: 14.0),
                          const Text('Description of the problem*',
                              style: TextStyle(fontSize: 12.0)),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Write the problem...",
                              labelStyle: const TextStyle(fontSize: 10.0),
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
                          const Text(
                              'The cateogory that related to the problem*',
                              style: TextStyle(fontSize: 13)),
                          Center(
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      height: 350,
                                      child: Column(
                                        children: <Widget>[
                                          ListTile(
                                            title: const Text('Carpenters'),
                                            onTap: () {
                                              setState(() {});
                                              Navigator.pop(context);
                                            },
                                          ),
                                          ListTile(
                                            title: const Text('Plumbers'),
                                            onTap: () {
                                              setState(() {});
                                              Navigator.pop(context);
                                            },
                                          ),
                                          ListTile(
                                            title: const Text('Electricians'),
                                            onTap: () {
                                              setState(() {});
                                              Navigator.pop(context);
                                            },
                                          ),
                                          ListTile(
                                            title: const Text('Painters'),
                                            onTap: () {
                                              setState(() {});
                                              Navigator.pop(context);
                                            },
                                          ),
                                          ListTile(
                                            title: const Text('Tilers'),
                                            onTap: () {
                                              setState(() {});
                                              Navigator.pop(context);
                                            },
                                          ),
                                          ListTile(
                                            title:
                                                const Text('Plastering Contractors'),
                                            onTap: () {
                                              setState(() {});
                                              Navigator.pop(context);
                                            },
                                          ),
                                          ListTile(
                                            title: const Text(
                                                'Appliance Repair Technician'),
                                            onTap: () {
                                              setState(() {});
                                              Navigator.pop(context);
                                            },
                                          ),
                                          //   ListTile(
                                          //   title: Text('Alumetal Technicians'),
                                          // onTap: () {
                                          // setState(() {});
                                          //  Navigator.pop(context);
                                          // },
                                          // ),
                                          // ListTile(
                                          // title: Text('Marble Craftsmen'),
                                          // onTap: () {
                                          // setState(() {});
                                          // Navigator.pop(context);
                                          //  },
                                          // ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Categories',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    Icon(Icons.arrow_drop_down),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //  const Divider(),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, left: 15, right: 15, bottom: 0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor:
                                      const Color.fromARGB(234, 0, 0, 0),
                                  backgroundColor: const Color(0xFFBBA2BF),
                                ),
                                child: const Text(
                                  'Make a Request',
                                  style: TextStyle(fontSize: 10),
                                ),
                                onPressed: () {
                                  //Handle button tap
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
          backgroundColor: const Color(0xFFBBA2BF),
          shape: const CircleBorder(),
          child: const Icon(Icons.add_chart_rounded),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
