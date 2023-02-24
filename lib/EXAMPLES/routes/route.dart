import 'package:flutter/material.dart';
import 'package:learn/EXAMPLES/routes/one.dart';

void main() {
  runApp(const Routek());
}

class Routek extends StatelessWidget {
  const Routek({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hi ahmed',
      home: KRoutekkk(),
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
            color: Colors.amber,
            child: Column(
              children: [
                Center(
                    child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return One();
                    }));
                  },
                  child: const Text("go to page one"),
                )),
                Center(
                    child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Two();
                    }));
                  },
                  child: const Text("go to page two"),
                )),
                Center(
                    child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Three();
                    }));
                  },
                  child: const Text("go to page three"),
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
