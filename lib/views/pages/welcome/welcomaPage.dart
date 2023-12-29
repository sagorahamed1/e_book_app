import 'package:flutter/material.dart';

import '../home_page/home_page.dart';


class WelCamePage extends StatelessWidget {
  const WelCamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Bitmap.png"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.displayLarge,
                  children: [
                    TextSpan(text: "Flamin"),
                    TextSpan(
                        text: " go",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              ),
            ),
            runderbuttom(
              text: "Start reading",
              horizontalPadding: 16,
              verticalPadding: 32,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
            )
          ],
        ),
      ),
    );
  }
}

class runderbuttom extends StatelessWidget {
  final String text;
  final Function press;
  double? fontSize;
  final double horizontalPadding;
  final double verticalPadding;

  runderbuttom({
    super.key,
    required this.text,
    required this.press,
    required this.horizontalPadding,
    required this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withBlue(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 30,
              color: Colors.white10.withOpacity(.11),
            )
          ],
        ),
        child: Text("${text}", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
      ),
    );
  }
}
