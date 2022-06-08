 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tab/model/model.dart';
import 'package:tab/screens/splash_screen.dart';
// import 'package:hive/hive.dart ';


// ignore: constant_identifier_names
const String ApiBox = "apiData";
const String ApiBox2 = "apiData2";
 const String ApiBox3 = "apiData3";
 const String ApiBox4 = "apiData4";
 const String ApiBox5 = "apiData5";
 const String ApiBox6 = "apiData6";
 const String ApiBox7 = "apiData7";
 const String ApiBox8 = "apiData8";
 const String ApiBox9 = "apiData9";
 const String ApiBox10 = "apiData10";
 const String ApiBox11 = "apiData11";
 const String ApiBox12 = "apiData12";
 const String ApiBox13 = "apiData13";
 const String ApiBox14 = "apiData14";
 const String ApiBox15 = "apiData15";
 const String ApiBox16 = "apiData16";
 const String Fav = "Favorites";

 List<Model> favoriteDataList = [];

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await Hive.initFlutter();
  await Hive.openBox(ApiBox);
  await Hive.openBox(ApiBox2);
  await Hive.openBox(ApiBox3);
  await Hive.openBox(ApiBox4);
  await Hive.openBox(ApiBox5);
  await Hive.openBox(ApiBox6);
  await Hive.openBox(ApiBox7);
  await Hive.openBox(ApiBox8);
  await Hive.openBox(ApiBox9);
  await Hive.openBox(ApiBox10);
  await Hive.openBox(ApiBox11);
  await Hive.openBox(ApiBox12);
  await Hive.openBox(ApiBox13);
  await Hive.openBox(Fav);

  // Hive.registerAdapter(ModelAdapter());

  await Hive.box(ApiBox).clear();
  await Hive.box(ApiBox2).clear();
  ErrorWidget.builder = (FlutterErrorDetails) =>
  Scaffold(
    body: Center(
      child: Text('Something Went Wrong, Please Restart The App')
    ),
  );
  runApp(const MyApp()); 
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scholarship Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}