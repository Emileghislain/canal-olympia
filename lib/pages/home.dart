import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:scaled_list/scaled_list.dart';

class Home extends StatelessWidget {
  final tab = [
    "assets/images/pexels-maksim-goncharenok-4352247.jpg",
    "assets/images/pexels-maria-orlova-4946662.jpg",
    "assets/images/pexels-mart-production-7679865.jpg",
    "assets/images/pexels-max-fischer-5872357.jpg",
  ];
  final grid = [
    "assets/images/pexels-maksim-goncharenok-4352247.jpg",
    "assets/images/pexels-maria-orlova-4946662.jpg",
    "assets/images/Cover.png",
    "assets/images/Image (1).png",
    "assets/images/Cover.png",
    "assets/images/Image (1).png"
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(12, 32, 128, 0.5)),
        child: Column(children: [
          Container(
            width: size.width,
            height: 108,
            padding: EdgeInsets.only(top: 44),
            decoration: BoxDecoration(color: Color.fromRGBO(12, 32, 128, 0.5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/Product Logo.png"),
                /* SizedBox(width: 10,), */
                Container(
                    child: Row(
                  children: [
                    Image.asset("assets/images/Location.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Bessengue",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    child: Row(
                  children: [
                    Image.asset("assets/images/Vector.png"),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Eng",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16))
                  ],
                )),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(188, 0, 46, 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 18),
                        child: Text("Log In",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      ),
                    )),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Color.fromRGBO(12, 32, 128, 0.5)),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
              child: Row(
                children: [
                  TextButton(
                      onPressed: (() {}),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(children: [
                          Text('Les nouveautés',
                              style: TextStyle(
                                  color: Color.fromRGBO(14, 14, 15, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(width: 5),
                          Image.asset("assets/images/Vector1.png")
                        ]),
                      )),
                  TextButton(
                      onPressed: (() {}),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.08),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(children: [
                          Text('Vos préférences',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                          SizedBox(width: 5),
                          Image.asset("assets/images/Vector1.png")
                        ]),
                      )),
                  TextButton(
                      onPressed: (() {}),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.08),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(children: [
                          Text('Categories',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                          SizedBox(width: 5),
                          Image.asset("assets/images/Vector1.png")
                        ]),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    color: Color.fromRGBO(12, 32, 128, 0.5),
                    height: size.height*.55,
                    child: Swiper(
                      pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                          color: Colors.white30,
                          activeColor: Colors.white,
                          size: 10.0,
                          activeSize: 10.0
                        )
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final image = tab[index];
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(239, 239, 241, 0.2),
                                Color.fromRGBO(239, 239 , 241, 0.2)
                              ]),
          
                              image: DecorationImage(
                                image: AssetImage(image), 
                                fit: BoxFit.cover
                              )
                          ),
                        );
                      },
                      indicatorLayout: PageIndicatorLayout.SCALE,
                      autoplay: false,
                      itemCount: tab.length,
                      fade: 1.0,
                      viewportFraction: 0.75,
                      scale: 0.85,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 25),
                    decoration: BoxDecoration(color: Color.fromRGBO(12, 32, 128, 0.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Semaine du 17 - 23 Oct", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),),
                        Image.asset("assets/images/search.png", width: 40,)
                      ],
                    ),
                  ),
                  Container(
                    color: Color.fromRGBO(12, 32, 128, 0.5),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: size.height,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 10

                      ),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(grid[index]), 
                              fit: BoxFit.cover
                            )
                          ),
                          child: Column(
                            children: [
                              Text("Paw Patrol")
                            ],
                          )
                        );
                      },
                      itemCount: grid.length,
                    ) 
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
