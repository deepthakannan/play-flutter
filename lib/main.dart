import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './random_words.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode)
      exit(1);
  };
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
        backgroundColor: Colors.deepOrangeAccent
      ),
    );
  }
}