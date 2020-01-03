import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:english_words/english_words.dart';

class ScenicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  child: Image.asset(
                    'images/waterfall.jpg',
                  width: 600,            
                  height: 240,            
                  fit: BoxFit.cover,)
              )
            ],
          ),
          Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              color: Colors.lightGreenAccent,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Oeschinen Lake Campground',
                        style: TextStyle(
                            decorationStyle: TextDecorationStyle.double,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Kandersteg, Switzerland',
                        style: TextStyle(
                            decorationStyle: TextDecorationStyle.double,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  )),
                  Column(children: <Widget>[Icon(
                    Icons.star,
                    color: Colors.red,
                  )]),
                  Column(children: <Widget>[Text('41')])
                ],
              )),
          Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      Text(
                        'CALL',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.near_me,
                        color: Colors.blue,
                      ),
                      Text(
                        'Route',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ],
              )),
              Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
)
        ],
      ),
    );
  }
}
