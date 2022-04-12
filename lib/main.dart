import 'package:flutter/material.dart';
import 'FormPage.dart';
import 'FormPage2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FormPage2(),
      ),
    );
  }

}