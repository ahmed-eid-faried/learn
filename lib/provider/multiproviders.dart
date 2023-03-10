import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiproviders',
      routes: {
        'home': (_) => const Providers(),
      },
      home: const Providers(),
    );
  }
}

class Providers extends StatelessWidget {
  const Providers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Model>(create: (_) => Model()),
        ChangeNotifierProvider<Model2>(create: (_) => Model2()),
        Provider<Model3>(create: (_) => Model3()),
      ],
      child: const NewWidget(),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiproviders'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Model ${context.watch<Model>().data}')),
            const SizedBox(height: 10),
            Center(child: Text('Model2 ${context.watch<Model2>().data}')),
            const SizedBox(height: 10),
            Center(child: Text('Model3 ${context.watch<Model3>().data}')),
            const SizedBox(height: 10),
            MaterialButton(
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                context.read<Model>().changeName();
              },
              child: const Text('Add Model'),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                context.read<Model2>().changeName();
              },
              child: const Text('Add Model2'),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                context.read<Model3>().changeName();
              },
              child: const Text('Add Model2'),
            ),
          ],
        ),
      ),
    );
  }
}

class Model extends ChangeNotifier {
  int data = 0;

  void changeName() {
    data++;
    notifyListeners();
    print("Model $data");
  }
}

class Model2 extends ChangeNotifier {
  int data = 0;

  void changeName() {
    data++;
    notifyListeners();
    print("Model2 $data");
  }
}

class Model3 {
  int data = 0;

  void changeName() {
    data++;
    print("Model3 $data");
  }
}
