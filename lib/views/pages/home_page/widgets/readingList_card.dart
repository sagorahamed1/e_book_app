
import 'package:e_book/views/pages/home_page/widgets/two_side_radius_buttom.dart';
import 'package:flutter/material.dart';

import '../../details_page/details_page.dart';

class readingListCard extends StatelessWidget {
  final String? image;
  final String? title;

  readingListCard(
      {this.image,
        this.title,
        this.auth,
        this.rating,
        this.onpress,
        this.readMore});

  final String? auth;
  final double? rating;
  final Function? onpress;
  final Function? readMore;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 247,
      width: 202,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 33,
                        color: Color(0XFFD3D3B3).withOpacity(.88))
                  ]


              ),
            ),
          ),
          Image.asset(
            "$image",
            width: 150,
          ),
          Positioned(
            top: 46,
            right: 10,
            child: Column(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
                Rating(
                  score: 4.9,
                )
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: "$title"),
                          TextSpan(
                              text: "$auth",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlue))
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailsScreen()));
                        },
                        child: Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text("details"),
                        ),
                      ),
                      Expanded(
                        child: twoSideRadiusButton(
                          text: "Read",
                          press: () {
                            readMore;
                          },
                        ),
                      )
                    ],
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


class Rating extends StatelessWidget {
  double? score;

  Rating({this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 20,
                color: Color(0XFFD3D3B3).withOpacity(.5))
          ]),
      child: Column(
        children: [
          Icon(
            Icons.star,
            size: 15,
            color: Colors.red,
          ),
          Text("$score")
        ],
      ),
    );
  }
}

