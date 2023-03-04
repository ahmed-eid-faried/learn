import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "ShantellSans",
      ),
      title: 'fonts',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("fonts"),
      ),
      body: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Center(child: Text('normal font')),
              Center(
                child: Text(
                    "dataOf my dying but leave long he name. Front hear ever by quoth stately only prophet if so, with i gaunt devil clasp ominous my each. Nevermore reply the scarce let lenore your tell is help, beast each lie before."),
              ),
              Center(
                  child: Text(
                "Und in lied nach entwöhntes vom dem. Unbestimmten des der die dem, und mein so nun an hören. Guten gezeigt die ihr die, mir  und mild ernsten, weich tage sich und in neu wie und denen geisterreich. Aus jugendlich.",
                style: TextStyle(fontFamily: "ClimateCrisis"),
              )),
              Center(
                  child: Text(
                "لا يمكن لأي شخص أو برنامج حاسوبي التنبؤ بالأحداث المستقبلية بدقة تامة، إلا أن هناك بعض التوقعات العامة للاقتصاد المصري خلال العام القادم، وهي كالتالي:",
                style: TextStyle(fontFamily: "Cairo"),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
