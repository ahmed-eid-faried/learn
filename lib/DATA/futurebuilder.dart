import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "ShantellSans"),
      home: const FutureBluiderk(),
    );
  }
}

class FutureBluiderk extends StatefulWidget {
  const FutureBluiderk({super.key});

  @override
  State<FutureBluiderk> createState() => _FutureBluiderkState();
}

class _FutureBluiderkState extends State<FutureBluiderk> {
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/todos");
  Future getdata() async {
    var response = await http.get(url); //json
    var responsebody = await jsonDecode(response.body); //list
    return responsebody;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("future builder"),
      ),
      body: FutureBuilder(
        future: getdata(),
        // initialData: [],// CircularProgressIndicator بديل لل
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    tileColor: Colors.amber,
                    title: Text(snapshot.data[index]["title"]),
                    trailing: snapshot.data[index]["completed"] == true
                        ? const Icon(Icons.done)
                        : const Icon(Icons.close));
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
/*
  "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
 */