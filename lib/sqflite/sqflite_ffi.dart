// import 'dart:async';
// import 'package:sqflite_common_ffi/sqflite_ffi.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class SqlDb { 
//   //الهدف هو انشاء و تهيئة الجداول مرة واحدة فقط و ليس كل مرة
//   static Database? _db;
//   Future<Database?> get db async {
//     if (db == null) {
//       _db = intialDB(); //_db=>mydb
//       return _db;
//     } else {
//       return _db;
//     }
//   }

//   intialDB() async {
//     // Get a location using getDatabasesPath
//     String dataBasePath = await getDatabasesPath();
//     String path = join(dataBasePath, "test.db");
//     // open the database
//     Database mydb = await openDatabase(path,
//         onCreate: _onCreate, version: 1, onUpgrade: _onUpgrade);
//     // Function(Database, int, int)? onUpgrade
//     return mydb;
//   }

//   _onCreate(Database db, int version) async {
//     // When creating the db, create the table
//     await db.execute('''
// CREATE TABLE "notes" (
//   "id" INTEGER PRIMARY KEY NOT NULL autoincrement  ,
//   "note" TEXT NOT NULL,
//   )
//       ''');
//     print("==================create database and tables======================");
//   }

//   _onUpgrade(Database db, int oldVersion, int newVersion) async {
//     print(
//         "==================Upgrade database and tables======================");
//   }

//   readData(String sql) async {
//     Database? mydb = await db;
//     List<Map> response = await mydb!.rawQuery(sql);
//     return response;
//   }

//   insertData(String sql, Map<String, Object?> v) async {
//     Database? mydb = await db;
//     int response = await mydb!.insert(sql, v);

//     return response;
//   }

//   updataData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawUpdate(sql);
//     return response;
//   }

//   deleteData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawDelete(sql);
//     return response;
//   }
// }


// /**
//  * import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class SqlDb {

//   static Database? _db ; 
  
//   Future<Database?> get db async {
//       if (_db == null){
//         _db  = await intialDb() ;
//         return _db ;  
//       }else {
//         return _db ; 
//       }
//   }


// intialDb() async {
//   String databasepath = await getDatabasesPath() ; 
//   String path = join(databasepath , 'wael.db') ;   
//   Database mydb = await openDatabase(path , onCreate: _onCreate , version: 3  , onUpgrade:_onUpgrade ) ;  
//   return mydb ; 
// }

// _onUpgrade(Database db , int oldversion , int newversion ) {


//  print("onUpgrade =====================================") ; 
  
// }

// _onCreate(Database db , int version) async {
//   await db.execute('''
//   CREATE TABLE "notes" (
//     "id" INTEGER  NOT NULL PRIMARY KEY  AUTOINCREMENT, 
//     "note" TEXT NOT NULL
//   )
//  ''') ;
//  print(" onCreate =====================================") ; 

// }

// readData(String sql) async {
//   Database? mydb = await db ; 
//   List<Map> response = await  mydb!.rawQuery(sql);
//   return response ; 
// }
// insertData(String sql) async {
//   Database? mydb = await db ; 
//   int  response = await  mydb!.rawInsert(sql);
//   return response ; 
// }
// updateData(String sql) async {
//   Database? mydb = await db ; 
//   int  response = await  mydb!.rawUpdate(sql);
//   return response ; 
// }
// deleteData(String sql) async {
//   Database? mydb = await db ; 
//   int  response = await  mydb!.rawDelete(sql);
//   return response ; 
// }
 

// // SELECT 
// // DELETE 
// // UPDATE 
// // INSERT 
 

// }
//  */