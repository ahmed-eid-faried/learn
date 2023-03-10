import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "home": (x) => const Providers(),
      },
      home: const Providers(),
    );
  }
}

class Providers extends StatelessWidget {
  const Providers({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (context) => Model(),
        child: Scaffold(
            appBar: AppBar(
              title: const Center(
                child: Text("providers"),
              ),
            ),
            body: Consumer<Model>(
              builder: (context, model, child) {
                print("=============================");
                return Container(
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: Text(model.data)),
                      const SizedBox(height: 10),
                      MaterialButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        onPressed: () {
                          model.changname();
                          print(model.data);
                        },
                        child: const Text("change"),
                      ),
                      const SizedBox(height: 10),
                      MaterialButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        onPressed: () {
                          model.changname2();
                          print(model.data);
                        },
                        child: const Text("change"),
                      )
                    ],
                  ),
                );
              },
            )));
  }
}

class Model {
  String data = "WELCOME";
  changname() {
    data = "WELCOME, ahmed";
    print(data);
  }

  changname2() {
    data = "WELCOME, mady";
    print(data);
  }
}
