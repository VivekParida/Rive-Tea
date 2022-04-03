// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rive_tea/Pages/Posts.dart';
import 'package:rive_tea/Providers/google_sign_in.dart';
import 'package:rive_tea/Widgets/button.dart';
import 'package:location/location.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  // final Stream<LocationData> locChangeFunc = (() {
  //   late final StreamController<LocationData> controller;
  //   controller = StreamController<LocationData>(
  //     onListen: () async {
  //       Location location = Location();
  //       late bool _serviceEnabled;
  //       late PermissionStatus _permissionGranted;
  //       _serviceEnabled = await location.serviceEnabled();
  //       if (!_serviceEnabled) {
  //         _serviceEnabled = await location.requestService();
  //         if (!_serviceEnabled) {
  //           return;
  //         }
  //       }

  //       _permissionGranted = await location.hasPermission();
  //       if (_permissionGranted == PermissionStatus.denied) {
  //         _permissionGranted = await location.requestPermission();
  //         if (_permissionGranted != PermissionStatus.granted) {
  //           return;
  //         }
  //       }
  //       controller.add(await location.getLocation());
  //     },
  //   );
  //   return controller.stream;
  // })();

  // Map<String, dynamic> getData(snapshot, curruser) {
  //   Map<String, dynamic> map;
  //   map = {
  //     "caption": "Sample caption \u4545 123!!",
  //     "chatroomid": curruser.email,
  //     "downvote": 0,
  //     "upvote": 0,
  //     "link": "http://www.google.com",
  //     "location": {
  //       "latitude": snapshot.data.latitude,
  //       "longitude": snapshot.data.longitude
  //     },
  //     "userid": curruser.email,
  //   };
  //   return map;
  // }

  // bool postData(snapshot, curruser) {
  //   try {
  //     Map<String, dynamic> map = getData(snapshot, curruser);
  //     CollectionReference collRef =
  //         FirebaseFirestore.instance.collection('post-data');
  //     collRef.add(map);
  //     return true;
  //   } catch (e) {
  //     print(e.toString());
  //     return false;
  //   }
  // }

  @override
  Widget build(context) {
    // final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Posts()),
          );
        },
      ),
      // child: Scaffold(
      //   body: Center(
      //     child: StreamBuilder<LocationData>(
      //       stream: locChangeFunc,
      //       builder:
      //           (BuildContext context, AsyncSnapshot<LocationData> snapshot) {
      //         List<Widget> children = [];
      //         if (snapshot.hasError) {
      //           children = <Widget>[
      //             const Icon(
      //               Icons.error_outline,
      //               color: Colors.red,
      //               size: 60,
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 16),
      //               child: Text('Error: ${snapshot.error}'),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 8),
      //               child: Text('Stack trace: ${snapshot.stackTrace}'),
      //             ),
      //           ];
      //         } else {
      //           switch (snapshot.connectionState) {
      //             case ConnectionState.none:
      //               children = const <Widget>[
      //                 Icon(
      //                   Icons.info,
      //                   color: Colors.blue,
      //                   size: 60,
      //                 ),
      //                 Padding(
      //                   padding: EdgeInsets.only(top: 16),
      //                   child: Text('Select a lot'),
      //                 )
      //               ];
      //               break;
      //             case ConnectionState.waiting:
      //               children = const <Widget>[
      //                 SizedBox(
      //                   width: 60,
      //                   height: 60,
      //                   child: CircularProgressIndicator(),
      //                 ),
      //                 Padding(
      //                   padding: EdgeInsets.only(top: 16),
      //                   child: Text('Awaiting location access...'),
      //                 )
      //               ];
      //               break;
      //             case ConnectionState.active:
      //               children = <Widget>[
      //                 const Text(
      //                   "Profile",
      //                 ),
      //                 Text(
      //                   'Welcome ' + user.displayName!,
      //                 ),
      //                 Text(
      //                   'Email: ' + user.email!,
      //                 ),
      //                 Text(
      //                   '${snapshot.data?.latitude} ${snapshot.data?.longitude}',
      //                 ),
      //                 Button(
      //                   () {
      //                     print(
      //                         "===================| Upload data |=====================");
      //                     postData(snapshot, FirebaseAuth.instance.currentUser);
      //                   },
      //                 ),
      //                 Button(
      //                   () {
      //                     final provider = Provider.of<GoogleSignInProvider>(
      //                         context,
      //                         listen: false);
      //                     provider.logout();
      //                   },
      //                 )
      //               ];
      //               break;
      //             default:
      //               break;
      //           }
      //         }
      //         return Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: children,
      //         );
      //       },
      //     ),
      //   ),
      // ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            //color: Colors.amber,
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 0.0,
              ),
              child: Container(
                margin:
                    EdgeInsets.only(top: 86, bottom: 10, left: 16, right: 16),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/3.jpg'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text(
                            'Vivek Parida',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          Expanded(
                            child: Text(
                                'There arent enough dustbins in the colony and the people are throwing garbages in empty plots leading to an unhygienic environment.  ',
                                style: TextStyle(
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(104, 106, 138, 1),
                                    height: 1.6)),
                          )
                        ]),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 240,
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.amber),
                      child: Image.asset('assets/garbage1.png'),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                            size: 20,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(1),
                            primary: Color.fromRGBO(164, 231, 166, 1),
                            onPrimary: Colors.red,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.grey,
                            size: 20,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(1),
                            primary: Color.fromRGBO(246, 245, 255, 1),
                            onPrimary: Colors.red,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.comment,
                            color: Colors.grey,
                            size: 20,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(1),
                            primary: Color.fromRGBO(246, 245, 255, 1),
                            onPrimary: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.share,
                            color: Colors.grey,
                            size: 20,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(1),
                            primary: Color.fromRGBO(246, 245, 255, 1),
                            onPrimary: Colors.red,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.forward,
                            color: Colors.grey,
                            size: 20,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(1),
                            primary: Color.fromRGBO(246, 245, 255, 1),
                            onPrimary: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 2,
                      color: Color.fromRGBO(239, 239, 239, 1),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/sup.png'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text(
                            'Suprashana Das',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          Expanded(
                            child: Text(
                                'The street light adjacent to our hostel flickers too much and sometimes doesn’t switch on even. Even after repeated complains it’s not repaired. What can be done about it ?  ',
                                style: TextStyle(
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(104, 106, 138, 1),
                                    height: 1.6)),
                          )
                        ]),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 240,
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Image.asset('assets/street.png'),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                            size: 20,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(1),
                            primary: Color.fromRGBO(164, 231, 166, 1),
                            onPrimary: Colors.red,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.grey,
                            size: 20,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(1),
                            primary: Color.fromRGBO(246, 245, 255, 1),
                            onPrimary: Colors.red,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.comment,
                            color: Colors.grey,
                            size: 20,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(1),
                            primary: Color.fromRGBO(246, 245, 255, 1),
                            onPrimary: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.share,
                            color: Colors.grey,
                            size: 20,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(1),
                            primary: Color.fromRGBO(246, 245, 255, 1),
                            onPrimary: Colors.red,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.forward,
                            color: Colors.grey,
                            size: 20,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(1),
                            primary: Color.fromRGBO(246, 245, 255, 1),
                            onPrimary: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
