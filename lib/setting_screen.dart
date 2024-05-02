import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         // Text("Setting")
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: Text(
          //     'Featured Products',
          //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          //   ),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 10,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         leading: CircleAvatar(
          //           backgroundColor: Colors.blue,
          //           child: Text('${index + 1}'),
          //         ),
          //         title: Text('Product ${index + 1}'),
          //         subtitle: Text('Price: \$${(index + 1) * 10}'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.add_shopping_cart),
          //           onPressed: () {
          //             // Add product to cart
          //           },
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}