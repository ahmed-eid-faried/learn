// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:flutter_map/plugin_api.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:latlong2/latlong.dart';
// import 'package:flutter/material.dart';
// import 'package:learn/components/scoffald.dart';

// void main(List<String> args) {
//   runApp(const App());
// }

// class App extends StatefulWidget {
//   const App({super.key});

//   @override
//   State<App> createState() => _AppState();
// }

// class _AppState extends State<App> {
//   //  LatLng Kposition = LatLng(0, 0);
//   late double lat;
//   late double lng;
//   late MapOptions mo;
//   double zoomdegree = 14.0;
//   Future getposition(context) async {
//     Position xy = await Geolocator.getCurrentPosition().then((value) => value);
//     lat = xy.latitude;
//     lng = xy.longitude;
//     List<Widget> knonRotatedChildren = [
//       ElevatedButton(
//         onPressed: () {
//           zoomdegree = zoomdegree + 1;
//           setState(() {});
//         },
//         child: const Icon(Icons.add),
//       ),
//       AttributionWidget.defaultWidget(
//         source: "Mady",
//         onSourceTapped: () {
//           print("Mady");
//         },
//         sourceTextStyle: const TextStyle(color: Color(0xFF0078a8)),
//         alignment: Alignment.topCenter,
//       )
//     ];
//     mo = MapOptions(
//       center: LatLng(lat, lng),
//       zoom: zoomdegree,
//       maxZoom: 20.0,
//       // تثبيت الخريطة بحجم أقصى المنطقة
//       // bounds: LatLngBounds(
//       //   LatLng(lat + 5, lng + 5),
//       //   LatLng(lat - 5, lng - 5),
//       // ),
//       //حدود لتقيد الخريطة
//       maxBounds: LatLngBounds(
//         LatLng(lat + 50, lng + 50),
//         LatLng(lat - 50, lng - 50),
//       ),
//       rotation: 20, // دوران
//       //  احفظ الخريط علشان مش يحصل اعادة تعين كل شوية للخريطة لو فى اكتر من ودجت داخل الصفحة
//       keepAlive: true,
//       interactiveFlags: InteractiveFlag.all, //Enables all interactions
//       // &InteractiveFlag.rotate,//Enables rotating the map with a twist gesture
//       // & ~InteractiveFlag.doubleTapZoom //Enables zooming with a double tap (prevents onTap from firing)
//       // & ~ InteractiveFlag.drag//Enables panning with one finger
//       //& ~ InteractiveFlag.flingAnimation//Enables fling animation when drag/pinchMove have enough 'Fling Velocity'
//       // InteractiveFlag.none//Disables all interactions
//       //& ~ InteractiveFlag.pinchMove//Enables panning with two or more fingers
//       //& ~ InteractiveFlag.pinchZoom//Enables zooming with a pinch gesture
//       ///
//       // enableScrollWheel: true,
//       // scrollWheelVelocity: 0.005,
//       ///
//       onPositionChanged: (MapPosition position, bool hasGesture) {
//         print("(${position.center!.latitude}, ${position.center!.longitude})");
//       },
//       onTap: (kTapPosition, location) {
//         print("ontap");
//         print("(${location.latitude}, ${location.longitude})");
//         //Offset(148.0, 126.0)//=> لاحظ مركز الشاشة يكون 0 و0
//         print(kTapPosition.relative);
//       },
//       onMapReady: () {
//         print("map  is created & this is onMapReady");
//       },
//     );
//     setState(() {});
//   }

//   @override
//   void initState() {
//     check(context);
//     getposition(context);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text("maps"),
//           ),
//           body: MyMapWidget(
//               mo: mo,
//               // Kposition: Kposition,
//               nonRotatedChildren: knonRotatedChildren)),
//     );
//   }
// }

// class MyMapWidget extends StatelessWidget {
//   final MapOptions mo;
//   // final LatLng Kposition;
//   final List<Widget> nonRotatedChildren;
//   MyMapWidget(
//       {super.key,
//       required this.mo,
//       // required this.Kposition,
//       required this.nonRotatedChildren});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: SizedBox(
//         height: 0.7 * MediaQuery.of(context).size.height,
//         width: double.infinity,
//         child: mo == null
//             ? const CircularProgressIndicator()
//             : FlutterMap(
//                 nonRotatedChildren: nonRotatedChildren,
//                 options: mo,
//                 children: [
//                     TileLayer(
//                       additionalOptions: {},
//                       urlTemplate:
//                           "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
//                       userAgentPackageName:
//                           'com.example_fm.app', //packagename for app
//                       retinaMode: MediaQuery.of(context).devicePixelRatio > 1.0,
//                       // حدود للطبقة
//                       tileBounds: LatLngBounds(
//                         LatLng(-90, -90),
//                         LatLng(90, 90),
//                       ),
//                     ),
//                   ]),
//       ),
//     );
//   }
// }

// /////////////////////
// Future check(context) async {
//   bool kisLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
//   // print(kisLocationServiceEnabled);
//   if (kisLocationServiceEnabled == false) {
//     AwesomeDialog(
//       context: context,
//       dialogType: DialogType.warning,
//       headerAnimationLoop: false,
//       animType: AnimType.bottomSlide,
//       title: 'Location services',
//       desc: "Location services are disabled.",
//       buttonsTextStyle: const TextStyle(color: Colors.blueAccent),
//       showCloseIcon: true,
//       btnCancelOnPress: () {},
//       btnOkOnPress: () {},
//     ).show();
//   }
//   LocationPermission kcheckPermission = await Geolocator.checkPermission();
//   // print(kcheckPermission);
//   if (kcheckPermission == LocationPermission.denied ||
//       kcheckPermission == LocationPermission.deniedForever) {
//     await Geolocator.requestPermission();
//   }
//   return kisLocationServiceEnabled;
// }

// ///////////////////
// Future measureofdistance(context, double px, double py) async {
//   Position xy = await Geolocator.getCurrentPosition();
//   double kdistanceBetween;
//   return kdistanceBetween =
//       Geolocator.distanceBetween(xy.latitude, xy.longitude, px, py) / 1000;
// }
// ///////////////////
// // class Cvl extends AttributionWidget{
// //   const Cvl({super.key, required super.attributionBuilder});
// // attributionBuilder.
// // }