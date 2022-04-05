// ignore_for_file: prefer_const_constructors

import 'package:rive_tea/Pages/ChatScreen.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  // trialContact() async {
  //   final contact = await FlutterContactPicker.pickFullContact();
  //   var _contact = contact.name.toString();
  //   print(_contact);
  // }

  @override
  Widget build(BuildContext context) {
    // trialContact();
    DateTime now = new DateTime.now();
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
        ),
        //scrollDirection: Axis.vertical,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 16.0, right: 16.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen())),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/garbage1.png'),
                            radius: 30.0,
                            backgroundColor: Color.fromRGBO(105, 109, 198, 1),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Garbage Dump",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: const Text(
                                  'There arent enough dustbins in the colony',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.w600),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '${now.hour} : ${now.minute}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 16.0, right: 16.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen())),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/street.png'),
                            radius: 30.0,
                            backgroundColor: Color.fromRGBO(105, 109, 198, 1),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Street Light",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: const Text(
                                  'The street light adjacent to out hostel flickers',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.w600),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '${now.hour} : ${now.minute}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //
              //
              //
              Container(
                margin: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 16.0, right: 16.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen())),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/dog.jpg'),
                            radius: 30.0,
                            backgroundColor: Color.fromRGBO(105, 109, 198, 1),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Puppies",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: const Text(
                                  'So small puppies are left behind by their mothers',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.w600),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '${now.hour} : ${now.minute}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //
              //
              //
              //
              Container(
                margin: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 16.0, right: 16.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen())),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/poor.jpg'),
                            radius: 30.0,
                            backgroundColor: Color.fromRGBO(105, 109, 198, 1),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Poor",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: const Text(
                                  'Being poor is not their fault yet they face',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.w600),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '${now.hour} : ${now.minute}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Chat {
  // final FlutterContactPicker _flutterContactPicker = new FlutterContactPicker();
  static var length = 10;
  String? name;
}

// class Chat extends StatefulWidget {
//   static var length = 10;

//   @override
//  // _ChatState createState() => new _ChatState();
// }

// class _ChatState extends State<Chat> {
//  // final FlutterContactPicker _contactPicker = new FlutterContactPicker();
//  // PhoneContact? _phoneContact;
//   String? _contact;

//   @override
//   Widget build(BuildContext context) {
//    // print(FlutterContactPicker.pickFullContact().toString());
//     _buildChildren(context);
//     // TODO: implement build
//     throw UnimplementedError();
//   }

//   List<Widget> _buildChildren(BuildContext context) {
//     return <Widget>[
//       if (_phoneContact != null)
//         Column(
//           children: <Widget>[
//             const Text("Phone contact:"),
//             Text("Name: ${_phoneContact!.fullName}"),
//             Text(
//                 "Phone: ${_phoneContact!.phoneNumber!.number} (${_phoneContact!.phoneNumber!.label})")
//           ],
//         ),
//       ElevatedButton(
//         child: const Text("pick full contact"),
//         onPressed: () async {
//         //  final FullContact contact =
//             //  (await FlutterContactPicker.pickFullContact());
//           setState(() {
//            // _contact = contact.toString();
//           });
//         },
//       ),
//     ];
//   }
// }
