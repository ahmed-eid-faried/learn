import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
// import 'package:geocoding/geocoding.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

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
    check(context);
    kcheckPermissionfun();
    var p = getposition(context);
    var px = getpositionlatitude(context);
    var py = getpositionlongitude(context);

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
  MapController mapController = MapController(
    initMapWithUserPosition: false,
    initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
    areaLimit: BoundingBox(
      east: 10.4922941,
      north: 47.8084648,
      south: 45.817995,
      west: 5.9559113,
    ),
  );

  @override
  Widget build(BuildContext context) {
    // BaseMapController mapController = MapController(
    //     // initMapWithUserPosition: true,
    //     // initPosition: GeoPoint(latitude: 0.0, longitude: 0.0),
    //     // areaLimit: const BoundingBox.world(),
    //     );
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
              Container(
                width: double.infinity,
                height: 0.4 * double.infinity,
                color: Colors.amber,
                child: OSMFlutter(
                  controller: mapController,
                  trackMyPosition: false,
                  initZoom: 12,
                  minZoomLevel: 8,
                  maxZoomLevel: 14,
                  stepZoom: 1.0,
                  userLocationMarker: UserLocationMaker(
                    personMarker: const MarkerIcon(
                      icon: Icon(
                        Icons.location_history_rounded,
                        color: Colors.red,
                        size: 48,
                      ),
                    ),
                    directionArrowMarker: const MarkerIcon(
                      icon: Icon(
                        Icons.double_arrow,
                        size: 48,
                      ),
                    ),
                  ),
                  roadConfiguration: const RoadOption(
                    roadColor: Colors.yellowAccent,
                  ),
                  markerOption: MarkerOption(
                      defaultMarker: const MarkerIcon(
                    icon: Icon(
                      Icons.person_pin_circle,
                      color: Colors.blue,
                      size: 56,
                    ),
                  )),
                ),
              ),
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

Future measureofdistance(context, double px, double py) async {
  Position xy = await Geolocator.getCurrentPosition();
  double kdistanceBetween;
  return kdistanceBetween =
      Geolocator.distanceBetween(xy.latitude, xy.longitude, px, py) / 1000;
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

  return kisLocationServiceEnabled;
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

  var des = '''latitude is ${xy.latitude}.
             longitude is ${xy.longitude}.''';
  return des;
}

Future getpositionlatitude(context) async {
  Position xy = await Geolocator.getCurrentPosition();
  return xy.latitude;
}

Future getpositionlongitude(context) async {
  Position xy = await Geolocator.getCurrentPosition();
  return xy.longitude;
}
