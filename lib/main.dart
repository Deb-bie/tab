 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tab/screens/splash_screen.dart';
// import 'package:hive/hive.dart ';


// ignore: constant_identifier_names
const String ApiBox = "apiData";
const String ApiBox2 = "apiData2";

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await Hive.initFlutter();
  await Hive.openBox(ApiBox);
  await Hive.openBox(ApiBox2);
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}