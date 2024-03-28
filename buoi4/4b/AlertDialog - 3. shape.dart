import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AlertDialog Example',
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
        title: Text('Flutter AlertDialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open Dialog'),
          onPressed: () {
            // Call the correct function to open the AlertDialog.
            openMyAlertDialog(context); // Changed this line
          },
        ),
      ),
    );
  }

  // The function name should match the one you're calling.
  void openMyAlertDialog(BuildContext context) { // No change needed here
    // Create a AlertDialog.
    AlertDialog dialog = AlertDialog(
      title: Text("Confirm"),
      content: Text("Are you sure to remove this item?"),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.green, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      actions: [
        ElevatedButton(
            child: Text("Yes Delete"),
            onPressed: (){
              // Return true and close the dialog
              Navigator.of(context).pop(true);
            }
        ),
        ElevatedButton(
            child: Text("Cancel"),
            onPressed: (){
              // Return false and close the dialog
              Navigator.of(context).pop(false);
            }
        ),
      ],
    );

    // Call showDialog function.
    showDialog<bool>( // Specify the return type for showDialog
        context: context,
        builder: (BuildContext context) {
          return dialog;
        }
    ).then((value) { // Use the returned value from the dialog
      if (value != null) { // Check if the value is not null
        print("Return value: $value"); // true/false
      }
    });
  }
}
