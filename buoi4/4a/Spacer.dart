import 'package:flutter/material.dart';

void main() {
  runApp(MyStackApp());
}

class MyStackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spacer Example',
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
            Row (
              children: <Widget>[
                Text('Begin'),
                Spacer(), // Defaults to a flex of one.
                Text('Middle'),
                // Gives twice the space between Middle and End than Begin and Middle.
                Spacer(flex: 2),
                Text('End'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
