import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/logo.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      nextScreen: const MyApp(),
      splashTransition: SplashTransition.slideTransition,
      duration: 3000,
    );
  }
}

void main() {
  runApp(const MySplashScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          drawer: const Drawer(child: Text("HI AHMED")),
          appBar: AppBar(
            title: const Text("main"),
          ),
          // drawer: const Text("hi ahmed"),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 100)),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 14, 0, 94),
                                width: 1.0,
                                style: BorderStyle.solid),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(2),
                            ),
                            color: Colors.blue,
                          ),
                          width: double.infinity,
                          // height: 40,
                          child: const Center(
                            child: Text(
                              "data",
                              // textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
                  ),
                  // const Divider(),
                  Expanded(
                    flex: 4,
                    child: Container(
                        // height: 300,

                        child: const Text(
                            textAlign: TextAlign.center,
                            '''Pavlova is a dessert popular in New Zealand and Australia. It’s not as common here in the states,  but I hope to help change that! A texture lover’s dream come true, pavlova is made from egg whites that are slowly baked in a relatively cool oven. The egg whites take on a chewy-crisp  texture on top, a soft marshmallow texture inside,   and a crunchy crisp texture around the edges. That’s three completely different textures in one single bite. The crunchy edges are just like meringue cookies.''')),
                  ),
                  // const Divider(),
                  Expanded(
                    flex: 6,
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 30),
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.blue)),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(children: [
                                      Icon(Icons.star,
                                          color: Colors.yellow[700]),
                                      Icon(Icons.star,
                                          color: Colors.yellow[700]),
                                      Icon(Icons.star,
                                          color: Colors.yellow[700]),
                                      const Icon(Icons.star,
                                          color: Colors.black54),
                                      const Icon(Icons.star,
                                          color: Colors.black54),
                                    ]),
                                    const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3)),
                                    const Text("17  review")
                                  ]),
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                ])
                          ],
                        )),
                  ),
                  const Expanded(
                    flex: 3,
                    child: SizedBox(
                        // height:,
                        ),
                  )
                ]),
          )),
      title: 'hi ahmed',
    );
  }
}
