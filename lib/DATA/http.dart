import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const HttpApp());
}

class HttpApp extends StatelessWidget {
  const HttpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "ShantellSans"),
      home: const Data(),
    );
  }
}

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  Uri uriphoto = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  List posts = [];
  List photos = [];
  Future getdata() async {
    var response = await http.get(uri);
    var responsephoto = await http.get(uriphoto);
    print("========================json==========================");
    print("{ == ${response.body[1]} == }"); // it is not return anything
    print(response.body); //json
    print("==photos==>>>${responsephoto.body}"); //json
    print("=====================jsonDecode=======================");
    var responsebody = jsonDecode(response.body); //as list
    var responsephotobody = jsonDecode(responsephoto.body); //as list
    print(responsebody[3]);
    print(responsephotobody[2]);
    print("=====================add to list=======================");
    setState(() {
      posts.addAll(responsebody);
      photos.addAll(responsephotobody);
    });
  }

  @override
  void initState() {
    getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: Column(
        children: [
          const Center(child: Text("data")),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.amberAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Center(
                            child: CircleAvatar(
                                backgroundColor: Colors.orangeAccent,
                                foregroundColor: Colors.white,
                                child: Text("${posts[index]["id"]}"))),
                        Center(
                            child: Text(
                          posts[index]["title"],
                          style: const TextStyle(fontSize: 25),
                        )),
                        Text(posts[index]["body"]),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: photos.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.amberAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.network(photos[index]["url"]))),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Center(
                                    child: CircleAvatar(
                                        backgroundColor: Colors.orangeAccent,
                                        foregroundColor: Colors.white,
                                        child: Text(
                                            "${photos[index]["albumId"]}"))),
                                Center(
                                    child: Text(
                                  photos[index]["title"],
                                  style: const TextStyle(fontSize: 25),
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
/**
 *  "userId": 1,
        "id": 1,
        "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
        "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
 */
