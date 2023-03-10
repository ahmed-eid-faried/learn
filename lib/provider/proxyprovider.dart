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
      title: 'ProxyProvider',
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
        ChangeNotifierProvider<MyModel>(create: (_) => MyModel()),
        //  ProxyProvider<MyModel, AnotherModel>(
        //   create: (context) => AnotherModel(MyModel()),
        //   update: (context, mmyModel, previous) => AnotherModel(mmyModel),
        // ),
        ListenableProxyProvider<MyModel, AnotherModel>(
          ///change ui
          create: (context) => AnotherModel(MyModel()),
          update: (context, mmyModel, previous) => AnotherModel(mmyModel),
        ),
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
        title: const Text('ProxyProvider'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Model ${context.watch<MyModel>().data}')),
            const SizedBox(height: 10),
            Center(
                child: Text(
                    'Model ${context.watch<AnotherModel>().myModel.data}')),
            const SizedBox(height: 10),
            Center(child: Text('Model ${context.watch<MyModel>().data}')),
            const SizedBox(height: 10),
            MaterialButton(
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                context.read<MyModel>().changedata();
              },
              child: const Text('Add MyModel'),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                try {
                  context.read<AnotherModel>().changedata();
                } catch (x) {
                  print("error=========>>>>>>>>>$x");
                }
              },
              child: const Text('subract AnotherModel'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyModel extends ChangeNotifier {
  int data = 0;

  void changedata() {
    data++;
    notifyListeners();
    print("Model $data");
  }
}

class AnotherModel extends ChangeNotifier {
  final MyModel myModel;
  AnotherModel(this.myModel);

  void changedata() {
    myModel.data--;
    notifyListeners();
    print("Model2 ${myModel.data}");
  }
}


