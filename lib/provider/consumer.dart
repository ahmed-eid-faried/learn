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
                Selector<Model, String>(
                  selector: (_, myType) => myType.showname,
                  builder: (context, value, child) {
                    print("text name");
                    return Center(child: Text(value));
                  },
                ),
                Selector<Model, int>(
                  selector: (_, myType) => myType.showage,
                  builder: (context, value, child) {
                    print("text age");
                    return Center(child: Text("$value"));
                  },
                ),
                Consumer<Model>(
                  builder: (context, model, child) {
                    print("MaterialButton name");
                    return MaterialButton(
                      color: Colors.white,
                      onPressed: () {
                        model.changname();
                      },
                      child: const Text("change name"),
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
                      },
                      child: const Text("change age"),
                    );
                  },
                ),
              ],
            )));
  }
}

class Model extends ChangeNotifier {
  String name = "hi";
  get showname => name;
  changname() {
    name = "hi, ahmed";
    notifyListeners();
  }

/////////////////////////////////////
  int age = 10;
  get showage => age;
  changage() {
    age = ++age;
    notifyListeners();
  }
  /////////////////////////////
}
