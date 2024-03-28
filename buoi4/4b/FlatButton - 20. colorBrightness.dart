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
            TextButton.icon(
              icon: Icon(Icons.add_shopping_cart),
              label: Text("Dark"),
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.green,
              ),
            ),
            TextButton.icon(
              icon: Icon(Icons.add_shopping_cart),
              label: Text("Light"),
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.green,
              ),
            ),
            TextButton.icon(
              icon: Icon(Icons.monetization_on),
              label: Text("Dark"),
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
              ),
            ),
            TextButton.icon(
              icon: Icon(Icons.monetization_on),
              label: Text("Light"),
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
