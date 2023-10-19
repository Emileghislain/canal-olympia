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
  final List grid = [
    {
      "image": "assets/images/pexels-maksim-goncharenok-4352247.jpg",
      "text": "Paw Patrol",
      "subtext": "Science-fiction",
      "hour": "2h00"
    },
    {
      "image": "assets/images/pexels-maria-orlova-4946662.jpg",
      "text": "Expendables 4",
      "subtext": "Adventure",
      "hour": "1h30"
    },
    {
      "image": "assets/images/pexels-maksim-goncharenok-4352247.jpg",
      "text": "Paw Patrol",
      "subtext": "Horror",
      "hour": "2h00"
    },
    {
      "image": "assets/images/pexels-maria-orlova-4946662.jpg",
      "text": "Paw Patrol",
      "subtext": "Comedy",
      "hour": "2h00"
    },
    {
      "image": "assets/images/pexels-maksim-goncharenok-4352247.jpg",
      "text": "Paw Patrol",
      "subtext": "Action",
      "hour": "2h00"
    },
    {
      "image": "assets/images/pexels-maria-orlova-4946662.jpg",
      "text": "Paw Patrol",
      "subtext": "Action",
      "hour": "2h00"
    },
    /* {"image": "assets/images/Cover.png", "text": "Paw Patrol"},
    {"image": "assets/images/Image (1).png", "text": "Paw Patrol"},
    {"image": "assets/images/Cover.png", "text": "Paw Patrol"},
    {"image": "assets/images/Image (1).png", "text": "Paw Patrol"}, */
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
                  child: TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        clipBehavior: Clip.none,
                        backgroundColor: Colors.transparent,
                        context: context, 
                        elevation: 2,
                        builder: (builder) {
                          
                          return VilleModalBottom();
                        }
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset("assets/images/Location.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Bessengue",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    )
                  ),
                ),
                /*SizedBox(
                  width: 10,
                ),*/
                Container(
                    child: TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                        clipBehavior: Clip.none,
                        backgroundColor: Colors.transparent,
                        context: context, 
                        elevation: 2,
                        builder: (builder) {
                          
                          return LangModalBottom();
                        }
                      );
                      },
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
                                    ),
                    )),
                SizedBox(
                  width: 10,
                ),
                TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (builder) {
                          return LoginModalBottom();
                        },
                      );
                    },
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
                    )
                  ),
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
                    height: size.height * .55,
                    child: Swiper(
                      pagination: SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                              color: Colors.white30,
                              activeColor: Colors.white,
                              size: 10.0,
                              activeSize: 10.0)),
                      itemBuilder: (BuildContext context, int index) {
                        final image = tab[index];
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(239, 239, 241, 0.2),
                                Color.fromRGBO(239, 239, 241, 0.2)
                              ]),
                              image: DecorationImage(
                                  image: AssetImage(image), fit: BoxFit.cover)),
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
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(12, 32, 128, 0.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Semaine du 17 - 23 Oct",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        Image.asset(
                          "assets/images/search.png",
                          width: 40,
                        )
                      ],
                    ),
                  ),
                  Container(
                      color: Color.fromRGBO(12, 32, 128, 0.5),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: size.height*(grid.length/4),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 0.6),
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  width: size.width / 2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image:
                                              AssetImage(grid[index]["image"]),
                                          fit: BoxFit.cover)),
                                          child: Stack(
                                    children: [
                                      Positioned(
                                        top: 5,
                                        right: 5,
                                          child: Container(
                                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            decoration: BoxDecoration(color: Color.fromRGBO(188, 0, 46, 1), borderRadius: BorderRadius.circular(5)),
                                        child: Text(grid[index]["hour"], style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                grid[index]["text"],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                grid[index]["subtext"],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                              
                            ],
                          );
                        },
                        itemCount: grid.length,
                      )),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}


class VilleModalBottom extends StatelessWidget{
  final List city = [
    {
      "city": "REBERO",
      "country": "Kigali Rwanda"
    },
    {
      "city": "Yaoundé 1",
      "country": "Yaoundé Cameroun"
    },
    {
      "city": "Bessengue",
      "country": "Douala Cameroun"
    },
    {
      "city": "REBERO",
      "country": "Kigali Rwanda"
    },
    {
      "city": "Yaoundé 1",
      "country": "Yaoundé Cameroun"
    },
    {
      "city": "Bessengue",
      "country": "Douala Cameroun"
    },
    {
      "city": "REBERO",
      "country": "Kigali Rwanda"
    },
    {
      "city": "Yaoundé 1",
      "country": "Yaoundé Cameroun"
    },
    {
      "city": "Bessengue",
      "country": "Douala Cameroun"
    },
    {
      "city": "REBERO",
      "country": "Kigali Rwanda"
    },
    {
      "city": "Yaoundé 1",
      "country": "Yaoundé Cameroun"
    },
    {
      "city": "Bessengue",
      "country": "Douala Cameroun"
    },
    {
      "city": "Bessengue",
      "country": "Douala Cameroun"
    },
    {
      "city": "REBERO",
      "country": "Kigali Rwanda"
    },
    {
      "city": "Yaoundé 1",
      "country": "Yaoundé Cameroun"
    },
    {
      "city": "Yesterday",
      "country": "Douala Cameroun"
    },
  ];

  @override 
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: Color.fromRGBO(12, 32, 128, 1),
        /* color: Colors.black, */
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, .4), style: BorderStyle.solid, width: 1)),
              prefixIcon: Image.asset("assets/images/search.png",),
              labelText: "Search",
              labelStyle: TextStyle(color: Color.fromRGBO(99, 115, 148, 1), fontSize: 16, fontWeight: FontWeight.w100),
              border: OutlineInputBorder(
                
                borderRadius: BorderRadius.circular(10)
              )
            ),
            textAlignVertical: TextAlignVertical.center,
    
          ),
          Expanded(child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Container(
              height: 900,
              padding: EdgeInsets.only(top: 20),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: ((city.length).toDouble())/2,
                  mainAxisSpacing: 10,
                ), 
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(city[index]["city"]+", ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                            Text(city[index]["country"], style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                          ],
                        ),
                        SizedBox(height: 10,),
                        index <= city.length ? Divider(color: Colors.white) : Divider(color: Colors.white, height: 0, thickness: 0,)
                      ],
                    ),
                  );
                },
                itemCount: city.length,
              ),
            ),
          ))
        ]
      ),
    );
  }
} 


class LangModalBottom extends StatelessWidget{
  final List city = [
    "French",
    "English"
  ];

  @override 
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: Color.fromRGBO(12, 32, 128, 1),
        /* color: Colors.black, */
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      child: Column(
        children: [
          Expanded(child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Container(
              height: 100,
              padding: EdgeInsets.only(top: 20),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 10,
                  mainAxisSpacing: 10,
                ), 
                itemBuilder: (BuildContext context, int index){
                  return Container(
                   /* padding: EdgeInsets.symmetric(vertical: 10),*/
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(city[index], style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                        SizedBox(height: 4,),
                        index == city.length ? Divider(color: Colors.white) : SizedBox.shrink()
                      ],
                    ),
                  );
                },
                itemCount: city.length,
              ),
            ),
          )),
        ],
      ),
    );
  }
}


class LoginModalBottom extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: Color.fromRGBO(12, 32, 128, 1),
        /* color: Colors.black, */
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),),
          SizedBox(height: 5,),
          Text("Access to purchased tickets", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Color.fromRGBO(99, 115, 148, 1)),)
        ],
      ),
    );
  }
}
