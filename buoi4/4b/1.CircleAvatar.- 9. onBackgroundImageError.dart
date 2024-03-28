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

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }

}

class _MyHomePageState extends State<MyHomePage> {

  String imageUrl = "https://file-not-found";
  bool _loadImageError = false;

  void _handleImageError(dynamic exception, StackTrace? stackTrace) {
    print("Error loading image: $exception");
    if (!mounted) return;
    setState(() {
      _loadImageError = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Flutter CircleAvatar Example")
        ),
        body: Center (
            child: CircleAvatar(
              radius: 100,
              backgroundImage: _loadImageError ? null : NetworkImage(imageUrl),
              onBackgroundImageError: _loadImageError ? null : _handleImageError,
              child: _loadImageError ? Text("Error loading image!") : null,
            )

        )
    );
  }
}
