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
        title: Text('Spacer Example'),
      ),
      body: Center(
        child: Column (
          children: <Widget>[
            Icon(Icons.ac_unit, size: 32),
            Spacer(), // flex : 1 (Default)
            Icon(Icons.ac_unit, size: 36),
            Spacer(flex: 2),
            Icon(Icons.ac_unit, size: 48),
            Spacer(flex: 3),
            Icon(Icons.ac_unit, size: 24),
          ],
        ),
      ),
    );
  }
}
