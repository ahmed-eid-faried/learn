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
      home: const GetAndPost(),
    );
  }
}

class GetAndPost extends StatefulWidget {
  const GetAndPost({super.key});

  @override
  State<GetAndPost> createState() => _GetAndPostState();
}

class _GetAndPostState extends State<GetAndPost> {
  Uri urlp = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  Uri urlg1 = Uri.parse("https://jsonplaceholder.typicode.com/posts?userId=3");
  // Uri urlg2 = Uri.parse("https://jsonplaceholder.typicode.com/posts?userId=3&id=23");
  Future getdata() async {
    var response = await http.get(urlg1); //json
    var responsebody = await jsonDecode(response.body); //list
    return responsebody;
  }

  Future postdata() async {
    var response = await http.post(
      urlp,
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: {
        //"key": "value",//زى ما الباكاند محدد
        "userId": "6",
        "id": "2",
        "title": "maxime id vitae nihil numquam",
        "body":
            "veritatis unde neque eligendi\nquae quod architecto quo neque vitae\nest illo sit tempora doloremque fugit quod\net et vel beatae sequi ullam sed tenetur perspiciatis"
      },
    );
    var responsebody = await jsonDecode(response.body);
    return responsebody;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get And Post"),
      ),
      body: Column(
        // shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child:
                ElevatedButton(onPressed: postdata, child: const Text("post")),
          ),
          Expanded(
            child: FutureBuilder(
              future: getdata(),
              initialData: [],
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListTile(
                        tileColor: Colors.amber,
                        title: Text(snapshot.data[index]["title"]),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
