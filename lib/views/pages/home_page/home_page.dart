import 'package:flutter/material.dart';

import 'widgets/readingList_card.dart';
import 'widgets/two_radius_buttom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("assets/images/main_page_bg.png"),
                    fit: BoxFit.fitWidth)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 26,top: 10),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 30,color: Colors.black),
                      children: [
                        TextSpan(text: "What are your\n reading "),
                        TextSpan(
                            text: "Today",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          readingListCard(
                            image: "assets/images/book-1.png",
                            title: "Crushing & Influence",
                            auth: "Gray Venchuk",
                          ),
                          readingListCard(
                            image: "assets/images/book-2.png",
                            title: "Top ten business Hacks",
                            auth: "Herman joel",
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(fontSize: 30,color: Colors.black),
                              children: [
                                TextSpan(text: "Best of the "),
                                TextSpan(
                                    text: "day",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            width: double.infinity,
                            height: 267,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                    // bottom: 30,
                                  child: Container(
                                    height: 170,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEAEAEA),
                                      borderRadius: BorderRadius.circular(29),
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              left: 20, right: 200),
                                          child: Column(
                                            children: [
                                              Text(
                                                "new youk time best for 11 th 2020",
                                                style: TextStyle(fontSize: 24),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                " How to wid friends\n & Influence",
                                                style: TextStyle(fontSize: 50),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          right: 10),
                                                      height: 55,
                                                      child: Rating(
                                                        score: 4.9,
                                                      )),
                                                  Container(
                                                    child: Text(
                                                      "when the earth \nwas wanted to wid",
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: -18,
                                  top: -30,
                                  child: Image.asset(
                                    "assets/images/book-3.png",
                                    width: 137,
                                  ),
                                ),
                                Positioned(
                                  bottom: 57,
                                  right: 0,
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    child: twoRadiusButton(
                                      text: "Read",
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          continueSection(size: size)
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class continueSection extends StatelessWidget {
  const continueSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 30,color: Colors.black),
              children: [
                TextSpan(text: "Continue "),
                TextSpan(
                    text: "Reading",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: Color(0XFFD3D3B3)
                          .withOpacity(.88))
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Text("Crushing & Influcece",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),

                                    Text("Gary Venchuk"),

                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text("Chapter 7 of 10"),
                                    )
                                  ],
                                ),
                              ),

                              Image.asset("assets/images/book-1.png")
                            ],
                          ),
                        ),
                      )
                  ),
                  Container(
                    height: 7,
                    width: size.width * .6,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.circular(7)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}





