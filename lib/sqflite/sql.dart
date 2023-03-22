// import 'dart:io';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:learn/sqflite/sqflite.dart';
// import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
// import 'package:sqflite_common/sqlite_api.dart';

void main(List<String> args) async {
  // Initialize FFI for platforms that do not have native SQLite libraries
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    sqfliteFfiInit();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("sqflite")),
          body: Container(
            color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: MaterialButton(
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    onPressed: () async {
                      var response =
                          await SqlDb().readData("SELECT * FROM 'notes'");
                      print("$response");
                    },
                    child: const Text("readdata"),
                  ),
                ),
                Center(
                  child: MaterialButton(
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    onPressed: () async {
                      Map<String, Object?> v = {"note": "note 1"};
                      int response = await SqlDb().insertData("notes", v);
                      print("$response");
                    },
                    child: const Text("insertData"),
                  ),
                ),
                Center(
                  child: MaterialButton(
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    onPressed: () async {
                      int response = await SqlDb().deleteData("sql");
                      print("$response");
                    },
                    child: const Text("deleteData"),
                  ),
                ),
                Center(
                  child: MaterialButton(
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    onPressed: () async {
                      var response = await SqlDb().updataData("sql");
                      print("$response");
                    },
                    child: const Text("updataData"),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
