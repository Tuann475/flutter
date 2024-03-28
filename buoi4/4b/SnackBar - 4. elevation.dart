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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter SnackBar Example'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: Center(
            child: Builder(
                builder: (BuildContext ctxOfScaffold)  {
                  return ElevatedButton(
                      child: Text('Show SnackBar'),
                      onPressed: () {
                        this._showSnackBarMsgDeleted(ctxOfScaffold);
                      }
                  );
                }
            )
        )
    );
  }

  void _showSnackBarMsgDeleted(BuildContext ctxOfScaffold) {
    // Create a SnackBar.
    final snackBar = SnackBar(
      content: Text('Message is deleted!'),
      elevation: 15,
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: 'UNDO',
        onPressed: ()  {
        },
      ),
    );
    // Find the Scaffold in the widget tree
    // and use it to show a SnackBar.
    Scaffold.of(ctxOfScaffold).showSnackBar(snackBar);
  }

  void _showSnackBarMsgRestored(BuildContext ctxOfScaffold) {
    // Create a SnackBar.
    final snackBar = SnackBar(
        content: Text('Message is restored!')
    );
    // Find the Scaffold in the widget tree
    // and use it to show a SnackBar.
    Scaffold.of(ctxOfScaffold).showSnackBar(snackBar);
  }
}