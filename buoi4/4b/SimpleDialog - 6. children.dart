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
  MyHomePage({Key? key}) : super(key: key); // Make the Key parameter nullable

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  ProgrammingLanguage? selectedLanguage; // Make selectedLanguage nullable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter SimpleDialog Example")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text("Select a Language"),
                    onPressed: () {
                      showMyAlertDialog(context);
                    },
                  ),
                  SizedBox(width: 5, height: 5),
                  Text("Selected Language: " +
                      (selectedLanguage?.name ?? '?')) // Handle the null case
                ])));
  }

  void showMyAlertDialog(BuildContext context) {
    // Languages list is defined correctly
    var languages = [      ProgrammingLanguage("Javascript", 67.7),
      ProgrammingLanguage("HTML/CSS", 63.1),
      ProgrammingLanguage("SQL", 57.4),
      ProgrammingLanguage("Python", 44.1),
      ProgrammingLanguage("Java", 40.2),
      ProgrammingLanguage("Bash/Shell/PowerShell", 33.1),
      ProgrammingLanguage("C#", 31.4),
      ProgrammingLanguage("PHP", 26.2),
      ProgrammingLanguage("Typescript", 25.4),
      ProgrammingLanguage("C++", 23.9),
      ProgrammingLanguage("C", 21.8),
      ProgrammingLanguage("Go", 8.8)]; // No changes needed here

    // ... Rest of the code remains the same
    var itemList = languages.map( (lang) => SimpleDialogOption(
        onPressed: () {
          // Close and return value
          Navigator.pop(context, lang);
        },
        child: Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(lang.name),
              Text (
                  lang.percent.toString(),
                  style: TextStyle(color: Colors.red)
              )
            ]
        )
    )).toList();


    // Create SimpleDialog
    SimpleDialog dialog = SimpleDialog(
        title: Text('Select a Language:'),
        children: itemList
    );
    // Correct the showDialog's future to handle null
    Future<ProgrammingLanguage?> futureValue = showDialog<ProgrammingLanguage>(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });

    // Properly handle the nullable future result
    futureValue.then((language) {
      if (language != null) { // Check if the result is not null
        setState(() {
          selectedLanguage = language;
        });
      }
    });
  }
}

class ProgrammingLanguage {
  String name;
  double percent;

  ProgrammingLanguage(this.name, this.percent);
}
