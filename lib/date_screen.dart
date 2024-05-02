import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class DateScreen extends StatefulWidget {
  const DateScreen({super.key});

  @override
  State<DateScreen> createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  @override
  Widget build(BuildContext context) {
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
                      child: Icon(Icons.arrow_back_outlined)),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "Doctor",
                    style: TextStyle(
                        color: Color.fromARGB(255, 24, 24, 24),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          toolbarHeight: 40,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //padding: EdgeInsets.all(50),
                  //margin: EdgeInsets.all(10),
                  width: 320,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage('assets/images/doctor1.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //SizedBox(width: 20),
                    Text("Dr. Ashif ", style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0))),
                    SizedBox(width:150),
                    Icon(Icons.phone),
                    SizedBox(width: 15),
                    Icon(Icons.message),
                
              ],
            ),
              Text("India", style: TextStyle(fontSize: 18,color: Color.fromARGB(82, 0, 0, 0))),

                SizedBox(height: 10),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                    color: Color.fromARGB(53, 9, 210, 255),
                    borderRadius: BorderRadius.circular(3),
                      
                  ),
                child: Text("200+\npatients",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                   Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                    color: Color.fromARGB(53, 9, 210, 255),
                    borderRadius: BorderRadius.circular(3),
                      
                  ),
                child: Text("6+\nExperience",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                   Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                    color: Color.fromARGB(53, 9, 210, 255),
                    borderRadius: BorderRadius.circular(3),
                      
                  ),
                child: Text("5⭐\nRatings",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Color.fromARGB(255, 0, 0, 0))),
                  )
                ],
               ),
                SizedBox(height: 10),
                Text("About", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0))),
                SizedBox(height: 5,),
                Text(
                  "Dr. Ashif is a board-certified family physician with extensive experience in primary care and preventive medicine. Graduating with honors from [Medical School], Dr. Ashif completed residency training at [Hospital/Institution], where they honed their skills and expertise. ",
                   style: TextStyle(fontSize: 14,color: Color.fromARGB(150, 0, 0, 0))),
                SizedBox(height: 10),
                Text("Location", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0))),
                SizedBox(height: 10,),

                Container(
                  //padding: EdgeInsets.all(50),
                  margin: EdgeInsets.all(10),
                  width: 320,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('assets/images/map.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                 SizedBox(height: 10),

                     Center(
                       child: ElevatedButton(
                        
                                  style:  ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromARGB(255, 14, 97, 206),
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                   // margin:EdgeInsets.all(10),
                                   shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(1))),
                                      textStyle: TextStyle(
                                      //fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                                  onPressed: () {},
                                  child: const Text('Book Appointment',style: TextStyle(color: Color.fromARGB(252, 255, 255, 255)),),
                                ),
                     ),
                  

                 // ElevatedButton(
                    
//   style:  ButtonStyle( elevation:MaterialStatePropertyAll(0),,
//     backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 33, 116, 217)),
//   ),
//   child:  Text('Let me play among the stars',style: TextStyle(color: Color.fromARGB(252, 255, 255, 255)),),
//   onPressed: () {
//     // ...
//   },
// ),

              ]
            ),
          ),
        )
        //  Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         const Text('Extended'),
        //         const SizedBox(width: 16),
        //         // An example of the extended floating action button.
        //         //
        //         // https://m3.material.io/components/extended-fab/specs#686cb8af-87c9-48e8-a3e1-db9da6f6c69b
               
        //       ],
        //     ),
        // floatingActionButton:
        //  FloatingActionButton.extended(
        //           onPressed: () {
        //             // Add your onPressed code here!
        //           },
        //           label: const Text('Add'),
        //           icon: const Icon(Icons.add),
        //         ),
        );
  }
}
