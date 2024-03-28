import 'package:flutter/material.dart';

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

// // Bài tập 1
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text("BottomAppBar Example"),
//         ),
//         body: Center(
//             child: Text(
//           'Flutter BottomAppBar Example',
//         )),
//         bottomNavigationBar: BottomAppBar(
//           child: new Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.home),
//                 onPressed: () {},
//               ),
//               PopupMenuButton(
//                 icon: Icon(Icons.share),
//                 itemBuilder: (context) => [
//                   PopupMenuItem(
//                     value: 1,
//                     child: Text("Facebook"),
//                   ),
//                   PopupMenuItem(
//                     value: 2,
//                     child: Text("Instagram"),
//                   ),
//                 ],
//               ),
//               IconButton(
//                 icon: Icon(Icons.email),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//         ));
//   }
// }

// //Bài tập2
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text("BottomAppBar Example"),
//         ),
//         body: Center(
//             child: Text(
//           'Flutter BottomAppBar Example',
//         )),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           tooltip: 'Increment',
//           child: Icon(Icons.add),
//           elevation: 2.0,
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         bottomNavigationBar: BottomAppBar(
//           child: new Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.menu),
//                 onPressed: () {},
//               ),
//               IconButton(
//                 icon: Icon(Icons.search),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//         ));
//   }
// }

// //Bài tập3
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text("BottomAppBar Example"),
//         ),
//         body: Center(
//             child: Text(
//           'Flutter BottomAppBar Example',
//         )),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           tooltip: 'Increment',
//           child: Icon(Icons.add),
//           elevation: 2.0,
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         bottomNavigationBar: BottomAppBar(
//             child: new Row(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 IconButton(
//                   icon: Icon(Icons.menu),
//                   onPressed: () {},
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.search),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//             shape: CircularNotchedRectangle(),
//             color: Colors.greenAccent));
//   }
// }

// //Bài tập 4
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     EdgeInsets a2;
//     EdgeInsetsDirectional a;
//     return DefaultTabController(
//         length: 6,
//         child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.blue,
//             bottom: createTabBar(),
//             title: Text('Flutter TabBar Example'),
//           ),
//           body: TabBarView(
//             children: [
//               Center(child: Text("Car")),
//               Center(child: Text("Transit")),
//               Center(child: Text("Bike")),
//               Center(child: Text("Boat")),
//               Center(child: Text("Railway")),
//               Center(child: Text("Bus"))
//             ],
//           ),
//         ));
//   }

//   TabBar createTabBar() {
//     return TabBar(
//       tabs: [
//         Row(children: [
//           Icon(Icons.directions_car),
//           SizedBox(width: 5),
//           Text("Car")
//         ]),
//         Row(children: [
//           Icon(Icons.directions_transit),
//           SizedBox(width: 5),
//           Text("Transit")
//         ]),
//         Row(children: [
//           Icon(Icons.directions_bike),
//           SizedBox(width: 5),
//           Text("Bike")
//         ]),
//         Row(children: [
//           Icon(Icons.directions_boat),
//           SizedBox(width: 5),
//           Text("Boat")
//         ]),
//         Row(children: [
//           Icon(Icons.directions_railway),
//           SizedBox(width: 5),
//           Text("Railway")
//         ]),
//         Row(children: [
//           Icon(Icons.directions_bus),
//           SizedBox(width: 5),
//           Text("Bus")
//         ]),
//       ],
//       isScrollable: true,
//     );
//   }
// }

// //Bài tập 5 banner
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text("Banner Example"),
//         ),
//         body: Container(
//           padding: EdgeInsets.all(16),
//           child: Align(
//             alignment: Alignment.topCenter,
//             child: Banner(
//               message: 'Offer 20% off',
//               location: BannerLocation.topEnd,
//               color: Colors.red,
//               child: Container(
//                 height: 186,
//                 width: 280,
//                 child: Image.network(
//                   'https://raw.githubusercontent.com/o7planning/rs/master/flutter/fast_food.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         ));
//   }
// }

// //Bài tập 5 tabBar
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.blue,
//             bottom: PreferredSize(
//               preferredSize: Size.fromHeight(40),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: TabBar(
//                     tabs: [
//                       Row(children: [
//                         Icon(Icons.directions_car),
//                         SizedBox(width: 5),
//                         Text("Car")
//                       ]),
//                       Row(children: [
//                         Icon(Icons.directions_transit),
//                         SizedBox(width: 5),
//                         Text("Transit")
//                       ]),
//                       Row(children: [
//                         Icon(Icons.directions_bike),
//                         SizedBox(width: 5),
//                         Text("Bike")
//                       ]),
//                     ],
//                     indicator: ShapeDecoration(
//                         shape: UnderlineInputBorder(
//                             borderSide: BorderSide(
//                                 color: Colors.transparent,
//                                 width: 0,
//                                 style: BorderStyle.solid)),
//                         gradient: LinearGradient(
//                             colors: [Color(0xff0081ff), Color(0xff01ff80)]))),
//               ),
//             ),
//             title: Text('Flutter TabBar Example'),
//           ),
//           body: TabBarView(
//             children: [
//               Center(child: Text("Car")),
//               Center(child: Text("Transit")),
//               Center(child: Text("Bike"))
//             ],
//           ),
//         ));
//   }
// }

// //Bài tập 6
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text("Banner Example"),
//         ),
//         body: Container(
//           padding: EdgeInsets.all(16),
//           child: Align(
//             alignment: Alignment.topCenter,
//             child: Banner(
//               textStyle: TextStyle(color: Colors.white, fontSize: 20),
//               message: 'Offer 20% off',
//               location: BannerLocation.topStart,
//               color: Colors.red,
//               child: Container(
//                 color: Colors.white,
//                 height: 186,
//                 width: 280,
//                 child: Image.network(
//                   'https://raw.githubusercontent.com/o7planning/rs/master/flutter/fast_food.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         ));
//   }
// }

// //Bài tập 8
// class _MyHomePageState extends State<MyHomePage> {
//   int tapCount = 0;
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text("BottomNavigationBar Example"),
//       ),
//       body: Center(
//           child: Text("Tap Count: " +
//               this.tapCount.toString() +
//               ", Index: " +
//               this.selectedIndex.toString())),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: this.selectedIndex,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.contacts),
//             label: "Contacts", // Updated to 'label'
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.mail),
//             label: "Emails", // Updated to 'label'
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profile", // Updated to 'label'
//           )
//         ],
//         onTap: (int index) {
//           this.onTapHandler(index);
//         },
//       ),
//     );
//   }

//   void onTapHandler(int index) {
//     this.setState(() {
//       this.tapCount++;
//       this.selectedIndex = index;
//     });
//   }
// }

// //Bài tập 9:
// class _MyHomePageState extends State<MyHomePage> {
//   int tapCount = 0;
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text("BottomNavigationBar Example"),
//       ),
//       body: Center(
//           child: Text("Tap Count: " +
//               this.tapCount.toString() +
//               ", Index: " +
//               this.selectedIndex.toString())),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: this.selectedIndex,
//         iconSize: 48,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.contacts),
//             label: "Contacts",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.mail),
//             label: "Emails",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profile",
//           )
//         ],
//         onTap: (int index) {
//           this.setState(() {
//             this.selectedIndex = index;
//           });
//         },
//       ),
//     );
//   }

//   void onTapHandler(int index) {
//     this.setState(() {
//       this.tapCount++;
//       this.selectedIndex = index;
//     });
//   }
// }

// //Bài tập 10
// class _MyHomePageState extends State<MyHomePage> {
//   int tapCount = 0;
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text("BottomNavigationBar Example"),
//       ),
//       body: Center(
//           child: Text("Tap Count: " +
//               this.tapCount.toString() +
//               ", Index: " +
//               this.selectedIndex.toString())),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: this.selectedIndex,
//         selectedIconTheme:
//             IconThemeData(color: Colors.red, opacity: 1.0, size: 45),
//         unselectedIconTheme:
//             IconThemeData(color: Colors.black45, opacity: 0.5, size: 25),
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.contacts),
//             label: "Contacts", // Updated to 'label'
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.mail),
//             label: "Emails", // Updated to 'label'
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profile", // Updated to 'label'
//           )
//         ],
//         onTap: (int index) {
//           this.onTapHandler(index);
//         },
//       ),
//     );
//   }

//   void onTapHandler(int index) {
//     this.setState(() {
//       this.tapCount++;
//       this.selectedIndex = index;
//     });
//   }
// }
