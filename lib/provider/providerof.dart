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
      title: 'Provider of',
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
            title: const Text("providers"),
          ),
          body: ListView(
            shrinkWrap: true,
            children: [
              Container(
                  height: 180, color: Colors.amber, child: const ChildWedgit()),
              const SizedBox(height: 50),
              Container(
                  height: 180,
                  color: Colors.redAccent,
                  child: const ChildWedgit2()),
              const SizedBox(height: 50),
              Container(
                  height: 180,
                  color: Colors.blueAccent,
                  child: const ChildWedgit3()),
            ],
          ),
        ));
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

class ChildWedgit extends StatelessWidget {
  const ChildWedgit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<Model>(context); //rebuild for all parts of widegts
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      const Center(child: Text("Provider.of<Model>(context)")),
      Center(child: Text(model.name)),
      Center(child: Text("${model.age}")),
      MaterialButton(
        color: Colors.white,
        onPressed: () {
          model.changname();
        },
        child: const Text("change name"),
      ),
      MaterialButton(
        color: Colors.white,
        onPressed: () {
          model.changage();
        },
        child: const Text("change age"),
      ),
    ]);
  }
}

class ChildWedgit2 extends StatelessWidget {
  const ChildWedgit2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var modelf = Provider.of<Model>(context,
        listen: false); //don't listen to change anything in ui.
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Center(child: Text("Provider.of<Model>(context, listen: false)")),
        Center(child: Text("listen: false ==>> ${modelf.name}")),
        Center(child: Text("listen: false ==>> ${modelf.age}")),
        MaterialButton(
          color: Colors.white,
          onPressed: () {
            modelf.changname();
          },
          child: const Text("change name"),
        ),
        MaterialButton(
          color: Colors.white,
          onPressed: () {
            modelf.changage();
          },
          child: const Text("change age"),
        ),
      ],
    );
  }
}

class ChildWedgit3 extends StatelessWidget {
  const ChildWedgit3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(child: Text("read ${context.read<Model>().name}")),
        Center(child: Text("watch ${context.watch<Model>().age}")),
        MaterialButton(
          color: Colors.white,
          onPressed: () {
            context.read<Model>().changname();
          },
          child: const Text("change name by read"),
        ),
        MaterialButton(
          color: Colors.white,
          onPressed: () {
            context.watch<Model>().changage();
          },
          child: const Text("change age by watch"),
        ),
      ],
    );
  }
}
