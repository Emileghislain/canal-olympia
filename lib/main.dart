import 'dart:async';
import 'package:canal_olympia/pages/start.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double radius = 0;
  late double MAX_RADIUS;

  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 1500), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Start())));
    if (mounted) {
      MAX_RADIUS = Get.context!.width / 1.9 ;

      log("max radius $MAX_RADIUS");

      Timer.periodic(const Duration(milliseconds: 20), (Timer t) {
        if (radius >= MAX_RADIUS) {
          t.cancel();
          return;
        }
        setState(() {
          radius = radius + 5;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; 
    log('message: $radius');
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            color: radius >= MAX_RADIUS
                ? Color.fromRGBO(188, 0, 46, 1)
                : Colors.white),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: radius,
              backgroundColor: Color.fromRGBO(188, 0, 46, 1),
            ),
            Image.asset("assets/images/image 3.png"),
          ],
        ),
      ),
    );
  }
}
