import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("page one"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
          child: Center(
              child: Column(
            children: [
              const Text("page one"),
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
          )),
        ));
  }
}

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("page Two"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Container(
          // width: double.infinity,
          // height: double.infinity,
          color: Colors.greenAccent,
          child: Center(
              child: Column(
            children: [
              const Text("page Two"),
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
          )),
        ));
  }
}

class Three extends StatelessWidget {
  const Three({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("page Three"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Container(
          // width: double.infinity,
          // height: double.infinity,
          color: Colors.purpleAccent,
          child: Center(
              child: Column(
            children: [
              const Text("page Three"),
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
          )),
        ));
  }
}

// KPushReplacementNamed
class KPushReplacement extends StatelessWidget {
  const KPushReplacement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("page PushReplacement"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Container(
          // width: double.infinity,
          // height: double.infinity,
          color: Colors.indigo,
          child: Center(
              child: Column(
            children: [
              const Text("page PushReplacement"),
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
              Center(
                  child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("home");
                },
                child: const Text("PUSH TO HOME"),
              )),
              Center(
                  child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("home");
                },
                child: const Text("PushReplacement TO HOME"),
              )),
            ],
          )),
        ));
  }
}
