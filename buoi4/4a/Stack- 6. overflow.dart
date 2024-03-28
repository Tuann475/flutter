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
            Container (
                width: 250,
                height: 250,
                color: Colors.blueGrey,
                margin: EdgeInsets.all(20),
                child: Stack (
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Positioned(
                      top: 50,
                      left: 50,
                      child: Container(
                        width: 290,
                        height: 100,
                        color: Colors.green,
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 70,
                      child: Container(
                        width: 120,
                        height: 230,
                        color: Colors.yellow,
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
