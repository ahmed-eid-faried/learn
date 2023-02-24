import 'package:flutter/material.dart';
import 'package:learn/EXAMPLES/routes/one.dart';

void main() {
  runApp(const Routek());
}

class Routek extends StatelessWidget {
  const Routek({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hi ahmed',
      routes: {
        "home": (context) {
          return const KRoutekkk();
        },
        "one": (context) {
          return const One();
        },
        "two": (x) => const Two(),
        "three": (x) => const Three(),
        "pushReplacementNamed": (x) => const KPushReplacement(),
      },
      home: const KRoutekkk(),
    );
  }
}

class KRoutekkk extends StatefulWidget {
  const KRoutekkk({
    super.key,
  });

  @override
  State<KRoutekkk> createState() => _KRoutekkkState();
}

class _KRoutekkkState extends State<KRoutekkk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerScrimColor: Colors.amber.withOpacity(0.3),
        appBar: AppBar(
          title: const Text("route of pages"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Container(
            color: Colors.blue,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      fillColor: Colors.amber,
                      labelText: "test for keeping of value by pop function"),
                ),
                Center(
                    child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("one");
                  },
                  child: const Text("go to page one"),
                )),
                Center(
                    child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("two");
                  },
                  child: const Text("go to page two"),
                )),
                Center(
                    child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("three");
                  },
                  child: const Text("go to page three"),
                )),
                Center(
                    child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed("pushReplacementNamed");
                  },
                  child: const Text("go to pushReplacementNamed"),
                )),
                Center(
                    child: MaterialButton(
                  onPressed: () {
                    print(Navigator.of(context).canPop());

                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop();
                    }
                  },
                  child: const Text("canpop & pop"),
                )),
              ],
            )));
  }
}
