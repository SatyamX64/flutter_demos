import 'package:flutter/material.dart';
import 'helper.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('JSON Serialization'),
        ),
        body: Center(
          child: Container(
            child: Text('Check Terminal'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: Helper.runCode,
        ),
      ),
    );
  }
}