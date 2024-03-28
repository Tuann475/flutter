import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
// // ví dụ FancyBottomNavigation
// class _MyHomePageState extends State<MyHomePage> {
//   int currentPage = 0;
//   Widget _myContacts = MyContacts();
//   Widget _myEmails = MyEmails();
//   Widget _myProfile = MyProfile();

//   @override
//   Widget build(BuildContext context) {
//     FancyBottomNavigation a;
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("FancyBottomNavigation Example"),
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         ),
//         body: Container(
//           color: Colors.black12,
//           child: getPage(),
//           constraints: BoxConstraints.expand(),
//         ),
//         bottomNavigationBar: FancyBottomNavigation(
//           tabs: [
//             TabData(iconData: Icons.contacts, title: "Contacts"),
//             TabData(iconData: Icons.mail, title: "Emails"),
//             TabData(iconData: Icons.person, title: "Profile")
//           ],
//           onTabChangedListener: (position) {
//             setState(() {
//               currentPage = position;
//             });
//           },
//         ));
//   }

//   Widget getPage() {
//     if (this.currentPage == 0) {
//       return this._myContacts;
//     } else if (this.currentPage == 1) {
//       return this._myEmails;
//     } else {
//       return this._myProfile;
//     }
//   }
// }

// class MyContacts extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text("Contacts"));
//   }
// }

// class MyEmails extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text("Emails"));
//   }
// }

// class MyProfile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text("Profile"));
//   }
// }

// // ví dụ CircularProgressIndicator
// class _MyHomePageState extends State<MyHomePage> {
//   double _value = 0;
//   bool _working = false;

//   void startWorking()  async {
//     this.setState(() {
//       this._working = true;
//       this._value = 0;
//     });
//     for(int i = 0; i< 10; i++) {
//       if(!this._working)  {
//         break;
//       }
//       await Future.delayed(Duration(seconds: 1));
//       this.setState(() {
//         this._value += 0.1;
//       });
//     }
//     this.setState(() {
//       this._working = false;
//     });
//   }

//   void stopWorking() {
//     this.setState(() {
//       this._working = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter CircularProgressIndicator Example'),
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       ),
//       body: Center(
//           child:  Column (
//               mainAxisAlignment: MainAxisAlignment.center,
//               children:  [
//                 SizedBox(
//                   width: 100,
//                   height: 100,
//                   child: CircularProgressIndicator(
//                     value: this._value,
//                     backgroundColor: Colors.cyanAccent,
//                     valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
//                   ),
//                 ),
//                 Text(
//                   "Percent: " + (this._value * 100).round().toString()+ "%",
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue, // Màu nền xanh
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(4), // Độ cong của góc, bạn có thể điều chỉnh theo ý muốn
//                     ),
//                   ),
//                   onPressed: _working ? null : startWorking,
//                   child: Text(
//                     "Start",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue, // Màu nền xanh
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(4), // Độ cong của góc, bạn có thể điều chỉnh theo ý muốn
//                     ),
//                   ),
//                   onPressed: !_working ? null : stopWorking,
//                   child: Text(
//                     "Stop",
//                     style: TextStyle(color: Colors.black38),
//                   ),
//                 ),
//               ]
//           )
//       ),
//     );
//   }
// }

// //ví dụ LinearProgressIndicator
// class _MyHomePageState extends State<MyHomePage> {
//   double _value = 0;
//   bool _working = false;

//   void startWorking()  async {
//     this.setState(() {
//       this._working = true;
//       this._value = 0;
//     });
//     for(int i = 0; i< 10; i++) {
//       if(!this._working)  {
//         break;
//       }
//       await Future.delayed(Duration(seconds: 1));
//       this.setState(() {
//         this._value += 0.1;
//       });
//     }
//     this.setState(() {
//       this._working = false;
//     });
//   }

//   void stopWorking() {
//     this.setState(() {
//       this._working = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter LinearProgressIndicator Example'),
//       ),
//       body: Center(
//           child:  Column (
//               mainAxisAlignment: MainAxisAlignment.center,
//               children:  [
//                 SizedBox(
//                   width: 250,
//                   height: 20,
//                   child: LinearProgressIndicator(
//                     value: this._value,
//                     backgroundColor: Colors.cyan[100],
//                     valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),
//                   ),
//                 ),
//                 SizedBox(width:10, height: 10),
//                 Text(
//                   "Percent: " + (this._value * 100).round().toString()+ "%",
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 ElevatedButton(
//                     child: Text("Start"),
//                     onPressed: this._working? null: () {
//                       this.startWorking();
//                     }
//                 ),
//                 ElevatedButton(
//                     child: Text("Stop"),
//                     onPressed: !this._working? null: () {
//                       this.stopWorking();
//                     }
//                 )
//               ]
//           )
//       ),
//     );
//   }
// }

// //ví dụ Container
// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Container Explemple'),
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       ),
//       body: Container (
//           alignment: Alignment.center,
//           foregroundDecoration: BoxDecoration(
//             image: const DecorationImage(
//               image: NetworkImage('https://s3.o7planning.com/images/smile-64.png'),
//               fit: BoxFit.none,
//             ),
//             border: Border.all( color: Colors.black, width: 8),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           margin: EdgeInsets.all(30),
//           child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.blue,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//             onPressed: () {},
//             child: Text(
//               "I am a Long Button",
//               style: TextStyle(color: Colors.white),
//             ),
//           )

//       )
//     );
//   }
// }

// //ví dụ Center
// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text("Flutter Center Example"),
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       ),
//       body: Center(
//           child: Icon (
//               Icons.place,
//               size: 128,
//               color: Colors.redAccent
//           )
//       ),
//     );
//   }
// }