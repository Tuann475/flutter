import 'package:flutter/material.dart';

void main() {
  runApp(MyStackApp());
}

class MyStackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StackHomePage(),
    );
  }
}

class StackHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Example'),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container( // First child (child 1)
              width: double.infinity,
              height: double.infinity,
              color: Colors.green,
              margin: EdgeInsets.all(20),
            ),
            Container(
              width: 250,
              height: 170,
              color: Colors.red,
            ),
            Container(
              width: 220,
              height: 150,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
