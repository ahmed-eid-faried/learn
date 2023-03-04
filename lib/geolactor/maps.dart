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
  var p;
  var py;
  var px;
  @override
  void initState() {
    check(context);
    kcheckPermissionfun();
    p = getposition(context);
    px = getpositionlatitude(context);
    py = getpositionlongitude(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SimpleExample(),
    );
  }
}

class SimpleExample extends StatefulWidget {
  SimpleExample({Key? key}) : super(key: key);

  @override
  _SimpleExampleState createState() => _SimpleExampleState();
}

class _SimpleExampleState extends State<SimpleExample> {
  late PageController controller;
  late int indexPage;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 1);
    indexPage = controller.initialPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("osm"),
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (p) {
          setState(() {
            indexPage = p;
          });
        },
        children: <Widget>[
          const Center(
            child: Text("page n1"),
          ),
          SimpleOSM(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexPage,
        onTap: (p) {
          controller.animateToPage(p,
              duration: const Duration(milliseconds: 500),
              curve: Curves.linear);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "information",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: "contact",
          ),
        ],
      ),
    );
  }
}

class SimpleOSM extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SimpleOSMState();
}

class SimpleOSMState extends State<SimpleOSM>
    with AutomaticKeepAliveClientMixin {
  late MapController controller;

  @override
  void initState() {
    super.initState();
    controller = MapController(
        areaLimit: const BoundingBox.world(),
        initMapWithUserPosition: true,
        initPosition: GeoPoint(latitude: 0.0, longitude: 0.0));
  }

  @override
  @mustCallSuper
  Widget build(BuildContext context) {
    super.build(context);
    return OSMFlutter(
      initZoom: 15,
      controller: controller,
      markerOption: MarkerOption(
        defaultMarker: const MarkerIcon(
          icon: Icon(
            Icons.person_pin_circle,
            color: Colors.blue,
            size: 56,
          ),
        ),
      ),
      trackMyPosition: false,
    );
  }

  @override
  bool get wantKeepAlive => true;
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
