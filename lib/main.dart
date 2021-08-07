import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demos'),
        ),
        body: Center(
          child: Container(
            child: Text('Look for demos in specific git branches'),
          ),
        ),
      ),
    );
  }
}