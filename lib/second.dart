import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Path()),
    );
  }
}

class Path extends StatefulWidget {
  const Path({super.key});

  @override
  State<Path> createState() => _PathState();
}

class _PathState extends State<Path> {
  List<dynamic> product = [];

  @override
  void initState() {
    super.initState();
    getdata();
    // print("hello");
  }

  Future<void> getdata() async {
    final String url = "https://dummyjson.com/products";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      setState(() {
        product = json.decode(response.body)['products'];
      });
      // print(product);
    } else {
      print("Failed to load data");
    }
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
// backgroundColor: Colors.black,

        body: SingleChildScrollView(
            child: Column(
              children: [
      Stack(
        children: [
          Container(
            height: 150,
            width: screensize.width,
            decoration: BoxDecoration(
              color: Color(0xFF7859CF),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      // DateTime.now().toString(),
                      '10:28',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.signal_cellular_alt, color: Colors.white),
                        SizedBox(width: 5),
                        Icon(Icons.wifi, color: Colors.white),
                        SizedBox(width: 5),
                        Icon(Icons.battery_0_bar_outlined, color: Colors.white),
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
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Order delivery',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )),
                    Container(
                      height: 30,
                      width: screensize.width * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Today"),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_downward_outlined))
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      Stack(children: [
        Container(
            height: screensize.height,
            width: screensize.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80)),
                border: Border.all(width: 0.1)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 1300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Milk"),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {}, child: Text("Cool Drinks")),
                        ElevatedButton(onPressed: () {}, child: Text(" Chips")),
                        ElevatedButton(
                            onPressed: () {}, child: Text("Cool Drinks")),
                        ElevatedButton(onPressed: () {}, child: Text("Chips")),
                        ElevatedButton(
                            onPressed: () {}, child: Text("Cool Drinks")),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: screensize.width / 3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFF3F3F3)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Find Way"),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_downward_outlined))
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: screensize.width / 3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFF3F3F3)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Find Store"),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_downward_outlined))
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 600,
                    width: 1000,
                    // decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 250.0,
                          crossAxisCount: 3,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 0.7,
                        ),
                        itemCount: product.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          // print("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");
                          // print(product[index]["images"].toString());
                          return Container(
                            height: 200,
                            width: 200,
                            child: Card(
                                elevation: 5.0,
                                shadowColor: Color(0xFF7859CF).withOpacity(0.8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                            product[index]["title"].toString()),
                                      ],
                                    ),
                                    Container(
                                      height: 75,
                                      width: 75,
                                      child: product[index]['images'] != null &&
                                              product[index]['images']
                                                  .isNotEmpty
                                          ? Image.network(
                                              product[index]['images'][0])
                                          : Container(),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        color: Color(0xFF7859CF),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Center(
                                            child: Text(
                                                '₹${product[index]['price'].toString()}')),
                                      ),
                                    )
                                  ],
                                )),
                          );
                        }),
                  ),
                ],
              ),
            )),
        Positioned(
          bottom: 20,
          left: 390,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF7859CF),
            ),
            height: 75,
            width: 700,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "total",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Text(
                    "₹399",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    height: 25,
                    width: 4,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text("Order Board",
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),
          ),
        )
      ])
    ])));
  }
}
