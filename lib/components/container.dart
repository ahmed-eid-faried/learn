import 'package:flutter/material.dart';

class CONTAINER extends StatelessWidget {
  const CONTAINER({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.center,
        height: 100,
        width: double.infinity,
        color: Colors.amber[400],
        child: const Text("data"),
      )
    ]);
  }
}
