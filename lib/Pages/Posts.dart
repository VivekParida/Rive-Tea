// ignore_for_file: prefer_const_constructors

//import 'dart:html';

import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
        ),
        SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 80.0,
            ),
            child: Container(
              margin: EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: <Widget>[
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        gapPadding: 300,
                      ),
                      hintText: 'Write something...',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(185, 185, 185, 1),
                        fontFamily: 'Gilroy',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        SizedBox(
                          width: 32,
                        ),
                        Icon(Icons.photo),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Add Photos or videos',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        SizedBox(
                          width: 32,
                        ),
                        Icon(Icons.video_call),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Start a live stream',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        SizedBox(
                          width: 32,
                        ),
                        Icon(Icons.location_city),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 56,
                        width: 333,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(33, 118, 255, 1)),
                        child: Center(
                          child: Text(
                            'Post',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 16,
                                color: Colors.white,
                                height: 1,
                                fontWeight: FontWeight.w600),
                            // textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
        )
      ],
    ));
  }
}
