import 'package:flutter/material.dart';

void main() => runApp(const SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Slider'),
        ),
        body: const SliderPage(),
      ),
    );
  }
}

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  var valueOfSlider = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: Center(
          child: Slider(
        activeColor: Colors.red,
        inactiveColor: Colors.blueGrey,
        min: 0.0,
        max: 100.0,
        value: valueOfSlider,
        onChanged: (value) {
          print(value);
          setState(() {
            valueOfSlider = value;
          });
        },
      )),
    );
  }
}
