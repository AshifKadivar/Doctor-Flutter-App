import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
//import 'package:test_app/date_screen.dart';
//import 'package:test_app/document_screen.dart';
//import 'package:test_app/bottom_navigation.dart';
import 'package:test_app/service_model.dart';
import 'package:test_app/calander.dart';
//import 'package:test_app/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int myIndex = 0;
  // List screenList = [
  //   const HomeScreen(),
  //   const DocumentScreen(),
  //   const DateScreen(),
  //   const SettingScreen()
  // ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 197, 197),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "👋", 
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Hello,",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                )
              ],
            ),
            Text(
              "Gregory House",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/person.jpg"),
              radius: 20,
            ),
          )
        ],
        toolbarHeight: 80.0,

        //title:

        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.clear),
        //     onPressed: () {
        //       //_searchController.clear();
        //       // Implement clear functionality here
        //     },
        //   ),
        // ],
      ),

      body: 
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          
        child:
          Column(
          
            verticalDirection: VerticalDirection.down,
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_constructors
        children: [
         
          // const Text(
          //   "Gregory House",
          //   style: TextStyle(fontSize: 20),
          // ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 68, 197, 197),
                boxShadow: [BoxShadow()]),
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: CupertinoSearchTextField(
                backgroundColor: Colors.white,
                itemSize: 25,
                borderRadius: BorderRadius.circular(30),
                padding: EdgeInsets.zero,
                prefixInsets: EdgeInsets.symmetric(horizontal: 12),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 64, 155, 155),
                  ),
                ),
              ),
            ),
          ),
     

          
          // ),

          Calendar(),
         
          // SizedBox(
          //   height: 20.0,
          // ),
          Divider(
            color: Color.fromARGB(255, 241, 241, 241),
            height: 15,
            thickness: 15,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Row(
                    children: [
                      Text(
                        "SERVICES",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 65, 155, 155)),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleIcon(
                            color: Color.fromARGB(255, 136, 185, 192),
                            icon: Icons.coronavirus_outlined,
                            bgc: Color.fromARGB(255, 187, 209, 212),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Covid - 19",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleIcon(
                            color: Color.fromARGB(255, 136, 185, 192),
                            icon: Icons.personal_injury_rounded,
                            bgc: Color.fromARGB(255, 187, 209, 212),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Doctors",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleIcon(
                            color: Color.fromARGB(255, 136, 185, 192),
                            icon: Icons.local_hospital_outlined,
                            bgc: Color.fromARGB(255, 187, 209, 212),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hospital",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleIcon(
                            color: Color.fromARGB(255, 136, 185, 192),
                            icon: Icons.medication_outlined,
                            bgc: Color.fromARGB(255, 187, 209, 212),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Medicines",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 241, 241, 241),
            height: 15,
            thickness: 15,
          ),
          Column(
          
            children: [
              const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Daily Reports",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        Spacer(),
                        Text(
                          ":",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 23),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Symptoms of covid to watch out for",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            "March 06, 09:01 PM",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/covid.png",
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.13,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Symptoms of covid to watch out for",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            "July 01, 06:29 AM",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/covid.png",
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.13,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ),
     //screens[currentIndex],
      // bottomNavigationBar: MyBottomNavigation(
      //   currentIndex: currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      // ),
      
   
    );
  }
}

