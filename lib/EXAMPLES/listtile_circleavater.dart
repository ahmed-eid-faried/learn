import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Demo'),
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
          // final snackBar = SnackBar(
          //   content: const Text('Yay! A SnackBar!'),
          //   action: SnackBarAction(
          //     label: 'Undo',
          //     onPressed: () {
          //       // Some code to undo the change.
          //     },
          //   ),
          // );
          final snackBar = SnackBar(
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.amber,
            showCloseIcon: true,
            closeIconColor: Colors.blueAccent,
            content: const Text('Yay! A SnackBar!'),
            duration: const Duration(seconds: 30),
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 100),
            action: SnackBarAction(
              label: 'data',
              textColor: Colors.blue,
              onPressed: () {
                if (kDebugMode) {
                  print("actions");
                }
              },
            ),

            onVisible: () {
              if (kDebugMode) {
                print("onVisible");
              }
            },
            // shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero)
            // shape: ShapeBorder.lerp(1, 2,  )

            // ),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}
