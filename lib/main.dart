import 'package:flutter/material.dart';
import 'package:interviewtask/second.dart';
import 'package:interviewtask/third.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        debugShowCheckedModeBanner: false,
        home: PageView(
          children: [
            FirstPage(),
            SecondPage(),
            ThirdPage(),
          ],
        ));
  }
}

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFDFF0F5),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '10:28',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.signal_cellular_alt,
                                  color: Colors.black),
                              SizedBox(width: 5),
                              Icon(Icons.wifi, color: Colors.black),
                              SizedBox(width: 5),
                              Icon(Icons.battery_0_bar_outlined,
                                  color: Colors.black),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('lib/images/person.jpg'),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Welcome! Muthu',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          )),
                          Icon(
                            Icons.notifications,
                            color: Color(0xFF001358),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Color(0xFF001358),
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recent Coupons',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'see all',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 200,
                    width: 400,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("lib/images/image2.jpg",
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shops',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'see all',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150,
                    width: screensize.width * 0.99,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("lib/images/image1.jpg",
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        SizedBox(width: screensize.width * 0.1),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("lib/images/image1.jpg",
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        SizedBox(width: screensize.width * 0.1),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: 100,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("lib/images/image3.jpg",
                                fit: BoxFit.cover),
                          ),
                        )),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Offers Coupon',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'see all',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                      height: 300,
                      width: 400,
                      child: Center(
                          child: Stack(
                        children: <Widget>[
                          Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              height: 200,
                              width: 400,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "lib/images/image5.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Align(
                              child: OverflowBox(
                            maxWidth: 450,
                            maxHeight: 60,
                            child: Container(
                              width: 450,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xFF0095D8),
                              ),
                              child: ClipOval(
                                child: BottomNavigationBar(
                                  currentIndex: _selectedIndex,
                                  onTap: _onItemTapped,
                                  backgroundColor: Colors.transparent,
                                  selectedItemColor: Color(0xFF001358),
                                  unselectedItemColor: Colors.white,
                                  items: [
                                    BottomNavigationBarItem(
                                      icon: Icon(Icons.home),
                                      label: 'Home',
                                    ),
                                    BottomNavigationBarItem(
                                      icon: Icon(Icons.card_membership_rounded),
                                      label: 'All Coupons',
                                    ),
                                    BottomNavigationBarItem(
                                      icon: Icon(Icons.settings),
                                      label: 'Settings',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                        ],
                      )))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
