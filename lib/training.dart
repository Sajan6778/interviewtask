// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               height: 100,
//               width: double.infinity,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 child: Image.asset(
//                   "lib/images/image1.jpg",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               margin: EdgeInsets.all(5),
//               width: 1500,
//               height: 60,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: Color(0xFF0095D8),
//               ),
//               child: ClipOval(
//                 child: BottomNavigationBar(
//                   currentIndex: _selectedIndex,
//                   onTap: _onItemTapped,
//                   backgroundColor: Colors.transparent,
//                   selectedItemColor: Color(0xFF001358),
//                   unselectedItemColor: Colors.white,
//                   items: [
//                     BottomNavigationBarItem(
//                       icon: Icon(Icons.home),
//                       label: 'Home',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Icon(Icons.card_membership_rounded),
//                       label: 'All Coupons',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Icon(Icons.settings),
//                       label: 'Settings',
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
