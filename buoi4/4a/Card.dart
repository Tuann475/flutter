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
          title: Text("Flutter Card Example")
      ),
      body: Card (
        margin: EdgeInsets.all(10),
        color: Colors.green[100],
        shadowColor: Colors.blueGrey,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon (
                  Icons.album,
                  color: Colors.cyan,
                  size: 45
              ),
              title: Text(
                "Let's Talk About Love",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('Modern Talking Album'),
            ),
          ],
        ),
      ),
    );
  }
}