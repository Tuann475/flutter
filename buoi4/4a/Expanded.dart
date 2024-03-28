import 'package:flutter/material.dart';

void main() {
  runApp(MyStackApp());
}

class MyStackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded Example',
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
        title: Text('Expanded Example'),
      ),
      body: Center(
        child: Row (
            children: [
              ElevatedButton(child: Text("B1"), onPressed:(){}),
              Expanded(
                child: Icon(Icons.ac_unit, size: 32, color: Colors.red),
              ),
              ElevatedButton(
                  child: Text("B2"),
                  onPressed:(){},
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(50, 100))
                  )
              ),
              Expanded(
                child: Icon(Icons.add_circle, size: 96, color: Colors.green),
              ),
              ElevatedButton(child: Text("Btn 3"), onPressed:(){}),
            ]
        ),
      ),
    );
  }
}
