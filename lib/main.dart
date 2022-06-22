
import 'package:business_trackers/Components/OnBording.dart';
import 'package:business_trackers/Views/NewEstimate.dart';
import 'package:business_trackers/Views/SplashScreen.dart';
import 'package:business_trackers/Views/TabbarScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Views/ClientDetails.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:TabbarScreen(),
    );
  }
}


