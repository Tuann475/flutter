import 'package:flutter/material.dart';

void main() {
  runApp(MyStackApp());
}

class MyStackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SizedBox  Example',
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
        title: Text('SizedBox  Example'),
      ),
      body: Center(
        child: SizedBox (
            width:250,
            height: 50,
            child: ElevatedButton(
                child: Text("Button "),
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    shadowColor : Colors.redAccent,
                    elevation: 10,
                    minimumSize: Size(200,  200 )
                )
            )
        )
      ),
    );
  }
}
