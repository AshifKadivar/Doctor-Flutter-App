import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final Color color;
  final Color bgc;
  final IconData icon;

  const CircleIcon(
      {required this.color, required this.icon, required this.bgc});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [bgc, Color.fromARGB(255, 248, 248, 249)],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        Icon(
          icon,
          color: Colors.black,
          size: 25,
        ),
      ],
    );
  }
}
