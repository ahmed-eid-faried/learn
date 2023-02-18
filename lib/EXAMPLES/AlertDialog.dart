import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AlertDialogL());

class AlertDialogL extends StatelessWidget {
  const AlertDialogL({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertDialog',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AlertDialog'),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const Dialog();
                });
          },
          child: const Text("child")),
    );
  }
}

class Dialog extends StatelessWidget {
  const Dialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.amber,
        icon: const Icon(Icons.alarm),
        iconColor: Colors.white,
        title: const Text("title"),
        titleTextStyle: const TextStyle(color: Colors.white),
        content: const Text(
            "titleWird schauer und sich träne meinem ist. Kommt um irren der gleich steigt welt der wie drängt, euren jenem längst die längst und ach. Es unbekannten stillen das manche mit euch, ernsten sich trüben bang sie versuch. Und und."),
        contentTextStyle: const TextStyle(color: Colors.white),
        // shape: ShapeBorder(),
        actions: [
          TextButton(
              child: const Text("ok"),
              onPressed: () {
                Navigator.pop(context, true);
                if (kDebugMode) {
                  print("ok");
                }
              }),
          TextButton(
              child: const Text("cancel"),
              onPressed: () {
                if (kDebugMode) {
                  Navigator.pop(context, true);
                  print("cancel");
                }
              }),
        ]);
  }
}
