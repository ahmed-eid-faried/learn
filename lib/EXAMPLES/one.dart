import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Exampleone());
}

class Exampleone extends StatelessWidget {
  const Exampleone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hi ahmed"),
        ),
        drawer: const Drawer(child: Text("hi ahmed")),
        body: Container(
          width: double.infinity,
          // color: Colors.yellowAccent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        border: Border.all(color: Colors.blueGrey, width: 2)),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    width: double.infinity,
                    child: const Center(
                        child: Text(
                      'one',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ))),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  width: double.infinity,
                  child: const Text(
                    '''Pavlova is a dessert popular in New Zealand and Australia. It’s not as common here in the states,  but I hope to help change that! A texture lover’s dream come true, pavlova is made from egg whites that are slowly baked in a relatively cool oven. The egg whites take on a chewy-crisp  texture on top, a soft marshmallow texture inside,   and a crunchy crisp texture around the edges. That’s three completely different textures in one single bite. The crunchy edges are just like meringue cookies.''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        // color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        // color: Colors.blueAccent,
                        border: Border.all(color: Colors.black54, width: 1)),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow[700]),
                                  Icon(Icons.star, color: Colors.yellow[700]),
                                  Icon(Icons.star, color: Colors.yellow[700]),
                                  const Icon(Icons.star, color: Colors.black54),
                                  const Icon(Icons.star, color: Colors.black54),
                                ],
                              ),
                              Text("17  review")
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.restaurant,
                                  color: Colors.green[700],
                                  size: 40,
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text("Feed"),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text("2   4"),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.category,
                                  color: Colors.green[700],
                                  size: 40,
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text("Feed"),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text("2   4"),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.emoji_food_beverage,
                                  color: Colors.green[700],
                                  size: 40,
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text("Feed"),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text("2   4"),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
