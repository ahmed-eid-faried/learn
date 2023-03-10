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
    return ChangeNotifierProvider(
        create: (context) => Model(),
        child: Scaffold(
            appBar: AppBar(
              title: const Center(
                child: Text("consumer"),
              ),
            ),
            body: ListView(
              children: [
                Consumer<Model>(
                  builder: (context, myType, child) {
                    print("====================================");
                    print("text name");
                    return Center(child: Text("${myType.name}"));
                  },
                ),
                Consumer<Model>(
                  builder: (context, myType, child) {
                    print("text age");
                    return Center(child: Text("${myType.age}"));
                  },
                ),
                Consumer<Model>(
                  builder: (context, model, child) {
                    print("MaterialButton name");
                    return MaterialButton(
                      color: Colors.white,
                      onPressed: () {
                        model.changname();
                        // print(model.name);
                      },
                      child: const Text("change namechangname"),
                    );
                  },
                ),
                Consumer<Model>(
                  builder: (context, model, child) {
                    print("MaterialButton age");
                    return MaterialButton(
                      color: Colors.white,
                      onPressed: () {
                        model.changage();
                        // print(model.age);
                      },
                      child: const Text("change age"),
                    );
                  },
                )
              ],
            )));
  }
}

class Model extends ChangeNotifier {
  String name = "hi";
  get showname => name;
  changname() {
    name = "hi, ahmed";
    // print("button name");
    notifyListeners();
  }

/////////////////////////////////////
  int age = 10;
  get showage => age;
  changage() {
    age = ++age;
    // print("button age");
    notifyListeners();
  }
  //////////////////////////////////
}
