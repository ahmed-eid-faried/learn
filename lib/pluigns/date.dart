import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Date',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var bdate = DateTime.now().subtract(const Duration(days: 400));
  var date = DateTime.now();
  var adate = DateTime.now().add(const Duration(days: 3));
  String formatdate = "D EEEE - M MMM LLLL- y  , H:m:s ,  Q-QQQQ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Center(child: Text('date')),
            Text("before ==>> ${Jiffy(bdate).format(formatdate)}"),
            Text("now ==>> ${Jiffy(date).format(formatdate)}"),
            Text("before ==>> ${Jiffy(adate).format(formatdate)}"),
            Text("bfter ==>> ${Jiffy(bdate).fromNow()}"),
            Text("now ==>> ${Jiffy(date).fromNow()}"),
            Text("after ==>> ${Jiffy(adate).fromNow()}"),
            Text("date.isAfter(bdate) ==>> ${date.isAfter(bdate)}"),
            Text("date.isAfter(adate) ==>> ${date.isAfter(adate)}"),
            Text("compareTo(past) ==>> ${date.compareTo(bdate)}"),
            Text("compareTo(now) ==>> ${date.compareTo(date)}"),
            Text("compareTo(future) ==>> ${date.compareTo(adate)}"),
          ],
        ),
      ),
    );
  }
}
