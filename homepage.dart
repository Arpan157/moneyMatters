import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:money_matters/chart.dart';
import 'package:money_matters/dashbord.dart';
import 'package:money_matters/profile.dart';
import 'package:money_matters/transaction.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    dashbord(),
    Chart(),
    Transaction(),
    Profile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = dashbord();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color(0xff057275),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 7,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = dashbord();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.dashboard,
                        color: currentTab == 0
                            ? Colors.deepPurple
                            : Colors.blueGrey),
                    Text(
                      'Dashbord',
                      style: TextStyle(
                          color: currentTab == 0
                              ? Colors.deepPurple
                              : Colors.blueGrey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = Chart();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.pie_chart_rounded,
                        color: currentTab == 1
                            ? Colors.deepPurple
                            : Colors.blueGrey,
                      ),
                      Text(
                        'Chart',
                        style: TextStyle(
                            color: currentTab == 1
                                ? Colors.deepPurple
                                : Colors.blueGrey),
                      )
                    ],
                  )),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Transaction();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wallet,
                      color:
                          currentTab == 2 ? Colors.deepPurple : Colors.blueGrey,
                    ),
                    Text(
                      'Transaction',
                      style: TextStyle(
                          color: currentTab == 2
                              ? Colors.deepPurple
                              : Colors.blueGrey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Profile();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color:
                          currentTab == 3 ? Colors.deepPurple : Colors.blueGrey,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                          color: currentTab == 3
                              ? Colors.deepPurple
                              : Colors.blueGrey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // backgroundColor: Color(0xff057275),
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Color(0xff057275),
      //   color: Color.fromARGB(255, 7, 144, 149),
      //   animationDuration: Duration(milliseconds: 270),
      //   onTap: (index) {
      //     print(index);
      //   },
      //   items: [
      //     Icon(
      //       Icons.home,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       Icons.add,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       Icons.edit,
      //       color: Colors.white,
      //     ),
      //   ],
      // ),
    );
  }
}
