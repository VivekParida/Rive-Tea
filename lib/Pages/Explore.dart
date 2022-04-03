// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            //color: Colors.amber,
          ),
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              // ignore: prefer_const_constructors
              padding: EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 80.0,
              ),
              child: Container(
                margin:
                    EdgeInsets.only(top: 64, bottom: 10, left: 16, right: 16),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 112,
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      //color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                  child: Text(
                                "Join your first community and get connected with people like you.",
                                style: TextStyle(
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.normal,
                                    height: 1.5,
                                    color: Color.fromRGBO(104, 106, 138, 1)),
                              )),
                              Image.asset('assets/explore_hero.png')
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          Text(
                            'For You',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ]),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 184,
                          width: 148,
                          //color: Colors.white,
                          child: Column(children: <Widget>[
                            Image.asset('assets/garb.jpg'),
                            SizedBox(
                              height: 5,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('Reduce Garbage'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('40 Members'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('Cleaning'),
                                  ],
                                )
                              ],
                            )
                          ]),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 184,
                          width: 148,
                          // color: Colors.white,
                          child: Column(children: <Widget>[
                            Image.asset('assets/lights.jpg'),
                            SizedBox(
                              height: 5,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('No Lights'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('67 Members'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('Lights'),
                                  ],
                                )
                              ],
                            )
                          ]),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'Communities by Interest',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'All',
                          style: TextStyle(color: Colors.blue),
                        ),
                        Text('Animals'),
                        Text('Environment'),
                        Text('Security'),
                        Text('Hygiene'),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 184,
                          width: 148,
                          //color: Colors.white,
                          child: Column(children: <Widget>[
                            Image.asset('assets/Potholes.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('Reduce Potholes'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('40 Members'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('Roads'),
                                  ],
                                )
                              ],
                            )
                          ]),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 184,
                          width: 148,
                          // color: Colors.white,
                          child: Column(children: <Widget>[
                            Image.asset('assets/Potholes.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('Reduce Potholes'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('40 Members'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('Roads'),
                                  ],
                                )
                              ],
                            )
                          ]),
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
