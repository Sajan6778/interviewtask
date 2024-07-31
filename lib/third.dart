import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Down();
  }
}

class Down extends StatefulWidget {
  const Down({super.key});

  @override
  State<Down> createState() => _DownState();
}

class _DownState extends State<Down> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isChecked1 = true;
  bool _isChecked2 = true;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 220,
          flexibleSpace: Container(
            child: Stack(
              children: [
                Container(
                  height: 150,
                  width: screensize.width,
                  decoration: BoxDecoration(
                    color: Color(0xFF7859CF),
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
                            // DateTime.now().toString(),
                            '10:28',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.signal_cellular_alt,
                                  color: Colors.white),
                              SizedBox(width: 5),
                              Icon(Icons.wifi, color: Colors.white),
                              SizedBox(width: 5),
                              Icon(Icons.battery_0_bar_outlined,
                                  color: Colors.white),
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
          ),
          automaticallyImplyLeading: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                ),
                color: Colors.white,
              ),
              child: TabBar(
                indicatorColor: Color(0xFF7859CF),
                controller: _tabController,
                tabs: [
                  Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xFF7859CF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Today's Order",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 156, 154, 154),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Tomorrow's Order",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete_forever_outlined,
                              color: Colors.red,
                            )),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: Text("Heritage Milk"),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                          child: Center(
                        child: Text("2"),
                      )),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: Checkbox(
                          hoverColor: Colors.purple,
                          value: _isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked1 = value ?? true;
                            });
                          },
                          activeColor: Colors.white,
                          checkColor: Colors.purple,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(child: Text("₹ 50")),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete_forever_outlined,
                              color: Colors.red,
                            )),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: Text("Cavins Milk"),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                          child: Center(
                        child: Text("1"),
                      )),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: Checkbox(
                          hoverColor: Colors.purple,
                          value: _isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked1 = value ?? true;
                            });
                          },
                          activeColor: Colors.white,
                          checkColor: Colors.purple,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(child: Text("₹ 22")),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete_forever_outlined,
                              color: Colors.red,
                            )),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: Text("Amul Milk Red"),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                          child: Center(
                        child: Text("2"),
                      )),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: Checkbox(
                          hoverColor: Colors.purple,
                          value: _isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked1 = value ?? true;
                            });
                          },
                          activeColor: Colors.white,
                          checkColor: Colors.purple,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(child: Text("₹ 40")),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete_forever_outlined,
                              color: Colors.red,
                            )),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: Text("Amul Milk Blue"),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                          child: Center(
                        child: Text("5"),
                      )),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: Checkbox(
                          hoverColor: Colors.purple,
                          value: _isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked1 = value ?? true;
                            });
                          },
                          activeColor: Colors.white,
                          checkColor: Colors.purple,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(child: Text("₹ 120")),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete_forever_outlined,
                              color: Colors.red,
                            )),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: Text("Amul Milk "),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                          child: Center(
                        child: Text("2"),
                      )),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: Checkbox(
                          hoverColor: Colors.purple,
                          value: _isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked1 = value ?? true;
                            });
                          },
                          activeColor: Colors.white,
                          checkColor: Colors.purple,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(child: Text("₹ 75")),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete_forever_outlined,
                              color: Colors.red,
                            )),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: Text("Arokia Milk"),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                          child: Center(
                        child: Text("4"),
                      )),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(
                        child: Checkbox(
                          hoverColor: Colors.purple,
                          value: _isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked1 = value ?? true;
                            });
                          },
                          activeColor: Colors.white,
                          checkColor: Colors.purple,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Center(child: Text("₹ 92")),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text("Total"), Text("₹ 287")],
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
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
                            "Delete All",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 4,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text("Confirm Order",
                              style: TextStyle(color: Colors.white)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
