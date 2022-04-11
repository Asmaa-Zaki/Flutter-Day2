import 'package:flutter/material.dart';
import 'FormPage.dart';

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
          appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text("Login"),
            actions: [Icon(Icons.check)],
          ),
        body: FormPage(),
      ),
    );
  }

}