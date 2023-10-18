

import 'package:canal_olympia/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Start extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset("assets/images/Frame 13514.png")
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset("assets/images/Frame 13513.png",)
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(255, 255, 255, 0),
                Color.fromRGBO(10, 20, 69, 0.56),
                Color.fromRGBO(10, 20, 69, 1),
              ], begin: Alignment.topCenter,
              end: Alignment.bottomCenter)
            ),
          ),
          Positioned(
            bottom: size.height/5,
            left: size.width*.1,
            child: Container(
              width: size.width*.8,
              decoration: BoxDecoration(color: Color.fromRGBO(188, 0, 46, 0.9), borderRadius: BorderRadius.all(Radius.circular(5))),
              child: TextButton(
                child: Text("Commencez", style: TextStyle(color: Colors.white, fontFamily: 'MontSerrat', fontWeight: FontWeight.bold, fontSize: 16),),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                },
              ),
            )
          )
        ],
      )
    );
  }
}