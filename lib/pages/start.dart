import 'package:canal_olympia/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

class Start extends StatelessWidget {
  @override
  final images = [
    "assets/images/pexels-maksim-goncharenok-4352247.jpg",
    "assets/images/pexels-maria-orlova-4946662.jpg",
    "assets/images/pexels-mart-production-7679865.jpg",
    "assets/images/pexels-max-fischer-5872357.jpg",
    "assets/images/pexels-maksim-goncharenok-4352247.jpg",
    "assets/images/pexels-maria-orlova-4946662.jpg",
    "assets/images/pexels-mart-production-7679865.jpg",
    "assets/images/pexels-max-fischer-5872357.jpg",
    "assets/images/pexels-maksim-goncharenok-4352247.jpg",
    "assets/images/pexels-maria-orlova-4946662.jpg",
    "assets/images/pexels-mart-production-7679865.jpg",
    "assets/images/pexels-max-fischer-5872357.jpg",
    "assets/images/pexels-maksim-goncharenok-4352247.jpg",
    "assets/images/pexels-maria-orlova-4946662.jpg",
    "assets/images/pexels-mart-production-7679865.jpg",
    "assets/images/pexels-max-fischer-5872357.jpg",
    "assets/images/pexels-maksim-goncharenok-4352247.jpg",
    "assets/images/pexels-maria-orlova-4946662.jpg",
    "assets/images/pexels-mart-production-7679865.jpg",
    "assets/images/pexels-max-fischer-5872357.jpg",
    "assets/images/pexels-maksim-goncharenok-4352247.jpg",
    "assets/images/pexels-maria-orlova-4946662.jpg",
    "assets/images/pexels-mart-production-7679865.jpg",
    "assets/images/pexels-max-fischer-5872357.jpg",
    "assets/images/pexels-maksim-goncharenok-4352247.jpg",
    "assets/images/pexels-maria-orlova-4946662.jpg",
    "assets/images/pexels-mart-production-7679865.jpg",
    "assets/images/pexels-max-fischer-5872357.jpg",
    "assets/images/pexels-maksim-goncharenok-4352247.jpg",
    "assets/images/pexels-maria-orlova-4946662.jpg",
    "assets/images/pexels-mart-production-7679865.jpg",
    "assets/images/pexels-max-fischer-5872357.jpg"
  ];
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        /*Positioned(
            top: 0,
            right: 0,
            child: Image.asset("assets/images/Frame 13514.png")
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset("assets/images/Frame 13513.png",)
          ),*/
        Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                  child: Transform.rotate(
                angle: -math.pi / 8,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        childAspectRatio: 0.5,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2),
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        height: 100,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.cover)),
                      );
                    }),
              )),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(255, 255, 255, 0),
            Color.fromRGBO(10, 20, 69, 0.56),
            Color.fromRGBO(10, 20, 69, 1),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
        Positioned(
            bottom: size.height / 5,
            left: size.width * .1,
            child: Container(
              width: size.width * .8,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(188, 0, 46, 0.9),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: TextButton(
                child: Text(
                  "Commencez",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'MontSerrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ))
      ],
    ));
  }
}
