// import 'dart:ui';

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
//import 'package:test_app/main.dart';
//import 'package:test_app/main.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({super.key});

  @override
  State<DocumentScreen> createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    print("h = ${height}");
    print("h = ${width}");

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 241, 241),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 241, 241),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.1),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/person.jpg"),
              radius: 20,
            ),
          ),
        
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Good Morning Ramim",
                  style: TextStyle(color: Color.fromARGB(255, 24, 24, 24), fontSize: 17),
                )
              ],
            ),
            Text(
              "Finding Doctor is Super easy!",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

          actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.notifications_outlined,color: Color.fromARGB(255, 0, 0, 0),),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          //color:Color.fromARGB(255, 241, 241, 241),
          children: [
            Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 241, 241, 241)),
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30,top: 10),
                child: CupertinoSearchTextField(
                  itemSize: 25,
                  padding: EdgeInsets.zero,
                  prefixInsets: EdgeInsets.symmetric(horizontal: 12),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 184, 183, 183),
                    ),
                  ),
                   decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255), // Change the background color if needed
          border: Border.all(
            color: const Color.fromARGB(255, 0, 0, 0), // Change the border color here
            width: 1.0, // Change the border width if needed
         
          ),
                //  backgroundColor: Colors.white,
               
                  borderRadius: BorderRadius.circular(10),
                 
                ),
              ),
            ),
            ),
        
            // Divider(
            //   color: Color.fromARGB(255, 241, 241, 241),
            //   height: 5,
            //   thickness: 5,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 1, left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Appointment",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      Spacer(),
                      Text(
                        "view details",
                        style: TextStyle(
                            color: Color.fromARGB(72, 66, 66, 66),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  ),
                  // InfoSection("Gregory House", "Nephrologist", " 3 years", "67%"),
                  // Appointment("80"),
                ],
              ),
            ),
            // Divider(
            //   color: Color.fromARGB(255, 241, 241, 241),
            //   height: 15,
            //   thickness: 15,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.start,
               
                children: [
                    Container(
                      //margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(  color: Color.fromARGB(255, 255, 255, 255),borderRadius:BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            height: 80,
                             decoration: BoxDecoration(  color: Color.fromARGB(255, 255, 255, 255),borderRadius:BorderRadius.circular(8),
                             image:  DecorationImage(
        image:AssetImage('assets/images/doctor.jpg'),
        fit: BoxFit.cover),),),
                            //child: Image.asset("assets/images/doctor.jpg",width: 100,height: 70,)),
                        
                            const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child:   Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              
                                children: [
                                  Text("Dr. Brate lee",style: TextStyle(color:Color.fromARGB(181, 0, 0, 0),fontSize: 15,fontWeight: FontWeight.bold)),
                                  Text("Surgeon",style: TextStyle(color:Color.fromARGB(181, 139, 139, 139),fontSize: 14)),
                                  Row(
                                    //mainAxisAlignment:MainAxisAlignment.start,
                                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Icon(Icons.calendar_month_outlined,color: Color.fromARGB(181, 139, 139, 139),size: 12),
                                    Text("26, November", style: TextStyle(color:Color.fromARGB(181, 139, 139, 139),fontSize: 10)),
                                    SizedBox(width: 5),
                                    Icon(Icons.watch_later_outlined,color: Color.fromARGB(181, 139, 139, 139),size: 12),
                                    Text("3:00pm-4:00pm",style: TextStyle(color:Color.fromARGB(181, 139, 139, 139),fontSize: 10))
                                  ],)
                                ],
                              ),
                            ),
                          
                        ],
                      ),
                    )
                ],
              ),
            ),
            //  Divider(
            //   color: Color.fromARGB(255, 241, 241, 241),
            //   height: 1,
            //   thickness: 1,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 1, left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      Spacer(),
                      Text(
                        "see all",
                        style: TextStyle(
                            color: Color.fromARGB(73, 1, 1, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  ),
                  // InfoSection("Gregory House", "Nephrologist", " 3 years", "67%"),
                  // Appointment("80"),
                ],
              ),
            ),
        
            // Padding(
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 15,
            //     vertical: 10,
            //   ),
            //   child: ,
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15),
            //   child: Divider(
            //     color: Color.fromARGB(255, 193, 186, 186),
            //     height: 5,
            //     thickness: 1,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                 //scrollDirection: Axis.horizontal,
                  children: [
                      allCategories(Icons.abc, "Dental Specilitys"),
                   // InfoSection("Gregory House", "Nephrologist", "1 yesrs", "52%"),
                    //Appointment("80")
                      allCategories(Icons.home, "Nevrologist"),
                      allCategories(Icons.pan_tool, "Dental Specilitys"),
                      allCategories(
                        Icons.terrain_sharp, 
                      "Dental Specilitys"),
                  ],
                ),
              ),
            ),
        
        
            // Divider(
            //   color: Color.fromARGB(255, 241, 241, 241),
            //   height: 15,
            //   thickness: 15,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 1, left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Top Doctors",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      Spacer(),
                      // Text(
                      //   "view details",
                      //   style: TextStyle(
                      //       color: Color.fromARGB(72, 66, 66, 66),
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 15),
                      // )
                    ],
                  ),
                  // InfoSection("Gregory House", "Nephrologist", " 3 years", "67%"),
                  // Appointment("80"),
                ],
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              // SingleChildScrollView(
              //   scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                 //scrollDirection: Axis.horizontal,
                  children: [
                      topDocotrs("assets/images/doctor.jpg","Dr.Ashif","India","⭐⭐⭐⭐⭐","50/h"),
                      SizedBox(height: 8),
                        topDocotrs("assets/images/doctor.jpg","Dr.MS Madkiya","America","⭐⭐⭐⭐","70/h"),
                         SizedBox(height: 8),
                          topDocotrs("assets/images/doctor.jpg","Dr.","Singapur","⭐⭐⭐⭐⭐","87/h"),
                           SizedBox(height: 8),
                            topDocotrs("assets/images/doctor.jpg","Ashif","Dubai","⭐⭐⭐","75/h"),
                             SizedBox(height: 8),
                   // InfoSection("Gregory House", "Nephrologist", "1 yesrs", "52%"),
                    //Appointment("80")
                     
                  ],
                ),
              ),
            //),
        
        
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15),
            //   child: Divider(
            //     color: Color.fromARGB(255, 193, 186, 186),
            //     height: 5,
            //     thickness: 1,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            //   child: Column(
            //     children: [
            //       InfoSection("Gregory House", "Nephrologist", "1 years", "52%"),
            //       Appointment("80")
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Widget topDocotrs(String image,String dName,String location,String star,String price){
    return    Container(
                    //margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(  color: Color.fromARGB(255, 255, 255, 255),borderRadius:BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 70,
                          height: 80,
                           decoration: BoxDecoration(  color: Color.fromARGB(255, 255, 255, 255),borderRadius:BorderRadius.circular(8),
                           image:  DecorationImage(
      image:AssetImage(image),
      fit: BoxFit.cover),),),
                          //child: Image.asset("assets/images/doctor.jpg",width: 100,height: 70,)),
                      
                            Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            
                            children: [
                               Text(dName,style: TextStyle(color:Color.fromARGB(181, 0, 0, 0),fontSize: 15,fontWeight: FontWeight.bold)),
                              Text(location,style: TextStyle(color:Color.fromARGB(181, 139, 139, 139),fontSize: 14)),
                              Text(star),
                              Text(price,style: TextStyle(color:Color.fromARGB(181, 0, 0, 0),fontSize: 15,fontWeight: FontWeight.bold)),

                      
                            ],
                          ),
                        Icon(Icons.arrow_circle_right_outlined)
                      ],
                    ),
                  );
    
    
    
    
    
    
    
    
    
    
    
    
    
    // Container(
    //     // padding: EdgeInsets.all(10),
    //     //             decoration: BoxDecoration(  color: Color.fromARGB(255, 255, 255, 255),borderRadius:BorderRadius.circular(10)),
    //      padding: EdgeInsets.all(5),
    //     margin: EdgeInsets.all(5),
    //     //height: 80,
    //    // width: 150,
    //     decoration: BoxDecoration(
    //     color: Color.fromARGB(255, 255, 255, 255), // Change the background color if needed
    //     border: Border.all(
    //       color: Color.fromARGB(80, 0, 0, 0), // Change the border color here
    //       width: 1.0, // Change the border width if needed
       
    //     ),
    //           //  backgroundColor: Colors.white,
             
    //           borderRadius: BorderRadius.circular(3),
               
    //           ),
    //       child: Row(
    //         children: [
    //           Container(
    //                       width: 70,
    //                       height: 80,
    //                        decoration: BoxDecoration(  color: Color.fromARGB(255, 255, 255, 255),borderRadius:BorderRadius.circular(8),
    //                        image:  DecorationImage(
    //   image:AssetImage(image),
    //   fit: BoxFit.cover),),),
    //                       //child: Image.asset("assets/images/doctor.jpg",width: 100,height: 70,)),
                      
    //                         Column(
    //                         mainAxisAlignment: MainAxisAlignment.start,
                            
    //                         children: [
    //                           Text(dName,style: TextStyle(color:Color.fromARGB(181, 0, 0, 0),fontSize: 15,fontWeight: FontWeight.bold)),
    //                           Text(location,style: TextStyle(color:Color.fromARGB(181, 139, 139, 139),fontSize: 14)),
    //                           Text(star),
    //                           Text(price,style: TextStyle(color:Color.fromARGB(181, 0, 0, 0),fontSize: 15,fontWeight: FontWeight.bold)),

    //                           // Row(
    //                           //   //mainAxisAlignment:MainAxisAlignment.start,
    //                           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                           //   children: [
    //                           //   Icon(Icons.calendar_month_outlined,color: Color.fromARGB(181, 139, 139, 139),size: 15),
    //                           //   Text("26, November", style: TextStyle(color:Color.fromARGB(181, 139, 139, 139),fontSize: 12)),
    //                           //   Icon(Icons.watch_later_outlined,color: Color.fromARGB(181, 139, 139, 139),size: 15),
    //                           //   Text("3:00pm-4:00pm",style: TextStyle(color:Color.fromARGB(181, 139, 139, 139),fontSize: 12))
    //                           // ],)
    //                         ],
    //                       ),

    //                       Icon(Icons.arrow_right_alt_outlined)
    //         ],
    //       )
    // );

  }

  Widget InfoSection(
      String name, String specialty, String experience, String likes) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/images.jpg"),
          radius: 35,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  specialty,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 176, 174, 174),
                      fontSize: 14),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 162, 241, 248),
                    ),
                    child: Icon(Icons.medical_services,
                        size: 13, color: Colors.blue),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Text(
                      experience,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 176, 174, 174),
                          fontSize: 12),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 247, 187, 171),
                    ),
                    child:
                        Icon(Icons.heart_broken, size: 13, color: Colors.red),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Text(
                      likes,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 176, 174, 174),
                          fontSize: 12),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget Appointment(String totalFee) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "Total Fee",
                style: TextStyle(
                    color: const Color.fromARGB(255, 176, 174, 174),
                    fontSize: 12),
              ),
              Text(
                "\$${totalFee}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.71,
            child: ElevatedButton(
              onPressed: () {},
              child: FittedBox(
                child: Text(
                  "Make an appointment",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  elevation: 8,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber[700],
                  fixedSize: Size(290, 55)),
            ),
          ),
        ],
      ),
    );
  }

  Widget allCategories(IconData icon,String name){
      return Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        //height: 80,
        width: 150,
        decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255), // Change the background color if needed
        border: Border.all(
          color: Color.fromARGB(80, 0, 0, 0), // Change the border color here
          width: 1.0, // Change the border width if needed
       
        ),
              //  backgroundColor: Colors.white,
             
              borderRadius: BorderRadius.circular(3),
               
              ),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon,color: Color.fromARGB(80, 0, 0, 0)),
            Text(name,style: TextStyle(color: Color.fromARGB(80, 0, 0, 0),fontSize: 12),)
          ],
        ),
      );
  }
}
