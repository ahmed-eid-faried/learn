import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    // check(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaff(),
    );
  }
}

class Scaff extends StatefulWidget {
  const Scaff({
    super.key,
  });

  @override
  State<Scaff> createState() => _ScaffState();
}

class _ScaffState extends State<Scaff> {
  late bool x1;
  double inlatitude = 0.0;
  double inlongitude = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("future & async & await"),
      ),
      body: Container(
          width: double.infinity,
          color: Colors.amber,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Text("$x1"),
              ElevatedButton(
                  onPressed: () {
                    // setState(() {
                    // x1 = check(context) as bool;
                    check(context);
                    kcheckPermissionfun();
                    // });
                  },
                  child: const Text("check")),
              ElevatedButton(
                  onPressed: () {
                    kcheckPermissionfun();
                  },
                  // async {await Geolocator.requestPermission();},
                  child: const Text("Permission")),
              ElevatedButton(
                  onPressed: () {
                    getposition(
                      context,
                    );
                  },

                  // async {await Geolocator.requestPermission();},
                  child: const Text("getposition FOR Mobile")),
              ElevatedButton(
                  onPressed: () {
                    // entertheotherlocation(context, inlatitude, inlongitude);
                    measureofdistance(context, 0, 0);
                  },

                  // async {await Geolocator.requestPermission();},
                  child: const Text("distance between two")),
              ElevatedButton(
                  onPressed: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.warning,
                      headerAnimationLoop: false,
                      animType: AnimType.bottomSlide,
                      title: 'Check your Location services',
                      desc: "Location services are disabled.",
                      buttonsTextStyle: const TextStyle(color: Colors.black),
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                  },
                  child: const Text("AwesomeDialog")),
            ],
          )),
    );
  }
}

// Future entertheotherlocation(
//     BuildContext context, inlatitude, inlongitude) async {
//   AwesomeDialog(
//     context: context,
//     dialogType: DialogType.warning,
//     headerAnimationLoop: false,
//     animType: AnimType.bottomSlide,
//     title: 'distance between two',
//     desc: "please enter the other location to calculate",
//     body: Column(
//       children: [
//         TextFormField(
//             onChanged: (x) {
//               inlatitude = x;
//             },
//             keyboardType: TextInputType.number,
//             decoration: const InputDecoration(label: Text('latitude'))),
//         TextFormField(
//             onChanged: (x) {
//               inlongitude = x;
//             },
//             keyboardType: TextInputType.number,
//             decoration: const InputDecoration(label: Text('longitude'))),
//       ],
//     ),
//     buttonsTextStyle: const TextStyle(color: Colors.black),
//     showCloseIcon: true,
//     btnCancelOnPress: () {},
//     btnOkOnPress: () {
//       measureofdistance(context, inlatitude, inlongitude);
//     },
//   ).show();
// }

Future measureofdistance(context, double px, double py) async {
  Position xy = await Geolocator.getCurrentPosition();
  var kdistanceBetween =
      Geolocator.distanceBetween(xy.latitude, xy.longitude, px, py) / 1000;
  AwesomeDialog(
    context: context,
    dialogType: DialogType.warning,
    headerAnimationLoop: false,
    animType: AnimType.bottomSlide,
    title: 'distance between two',
    desc:
        "measure of distance between your location and point ($px,$py) by meter is $kdistanceBetween",
    buttonsTextStyle: const TextStyle(color: Colors.black),
    showCloseIcon: true,
    btnCancelOnPress: () {},
    btnOkOnPress: () {},
  ).show();
}

Future check(context) async {
  bool kisLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
  if (kDebugMode) {
    print(kisLocationServiceEnabled);
  }
  if (kisLocationServiceEnabled == false) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      headerAnimationLoop: false,
      animType: AnimType.bottomSlide,
      title: 'Check your Location services',
      desc: "Location services are disabled.",
      buttonsTextStyle: const TextStyle(color: Colors.black),
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }
  if (kisLocationServiceEnabled == true) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      headerAnimationLoop: false,
      animType: AnimType.bottomSlide,
      title: 'Check your Location services',
      desc: "Location services are enabled.",
      buttonsTextStyle: const TextStyle(color: Colors.black),
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }
  // return kisLocationServiceEnabled;
}

Future kcheckPermissionfun() async {
  LocationPermission kcheckPermission = await Geolocator.checkPermission();
  print(kcheckPermission);
  if (kcheckPermission == LocationPermission.denied ||
      kcheckPermission == LocationPermission.deniedForever) {
    await Geolocator.requestPermission();
  }
}

Future getposition(context) async {
  Position xy = await Geolocator.getCurrentPosition();
  List<Placemark> placemarks =
      await placemarkFromCoordinates(xy.latitude, xy.longitude);
  var des = '''latitude is ${xy.latitude}.
             longitude is ${xy.longitude}.
             <<===geocoding===>>
      country==>> ${placemarks[0].country}
      administrativeArea==>> ${placemarks[0].administrativeArea}
      isoCountryCode==>> ${placemarks[0].isoCountryCode}
      locality==>> ${placemarks[0].locality}
      name==>> ${placemarks[0].name}
      postalCode==>> ${placemarks[0].postalCode}
      street==>> ${placemarks[0].street}
      ''';
  print(des);

  AwesomeDialog(
    context: context,
    dialogType: DialogType.warning,
    headerAnimationLoop: false,
    animType: AnimType.bottomSlide,
    title: ' your Current Position',
    desc: "$des",
    buttonsTextStyle: const TextStyle(color: Colors.black),
    showCloseIcon: true,
    btnCancelOnPress: () {},
    btnOkOnPress: () {},
  ).show();
}
