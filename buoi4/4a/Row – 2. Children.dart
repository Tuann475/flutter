import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'o7planning.org',
      debugShowCheckedModeBanner: false,
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
          title: Text("Flutter Row Example")
      ),
      body: Center(
          child: Row (
              children: [
                ElevatedButton(child: Text("BTN 1"), onPressed:(){}),
                Icon(Icons.ac_unit, size: 64, color: Colors.blue),
                ElevatedButton(
                    child: Text("Button 2"),
                    onPressed:(){},
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size.square(100))
                    )
                ),
                ElevatedButton(child: Text("BTN 3"), onPressed:(){}),
              ]
          )
      ),
    );
  }
}