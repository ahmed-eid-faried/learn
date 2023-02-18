import 'package:flutter/material.dart';

class TEXT extends StatelessWidget {
  const TEXT({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Center(
        child: Text(
          "TEXT 1 2 3",
          style: TextStyle(
            shadows: [
              Shadow(color: Colors.blue, blurRadius: 5, offset: Offset(4, 6))
            ],
            decoration: TextDecoration.lineThrough,
            fontSize: 30,
            color: Colors.white,
            backgroundColor: Colors.grey,
            fontWeight: FontWeight.bold,
            letterSpacing: 10,
            wordSpacing: 30,
          ),
        ),
      ),
      Text("TEXT"),
      Text("TEXT"),
      Text("TEXT"),
      Text("TEXT"),
      Text("TEXT"),
      Text("TEXT"),
      Text("TEXT"),
      Text("TEXT"),
      Text("TEXT"),
      Text("TEXT"),
      Text("TEXT"),
      Text("TEXT"),
      Text("TEXT"),
    ]);
  }
}
