import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TextButton Example"),
        ),
        body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  child: Text("Default Flat Button"),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.blue, // Text Color (Foreground color)
                  ),
                ),
                TextButton(
                  child: Text("Flat Button with Color"),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue, // Button Background Color
                    primary: Colors.white, // Text Color (Foreground color)
                  ),
                ),
              ],
            )));
  }
}
