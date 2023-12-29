
import 'package:flutter/material.dart';

class twoRadiusButton extends StatelessWidget {
  final String? text;
  final double? redius;
  final Function? press;

  twoRadiusButton({super.key, this.text, this.press, this.redius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Color(0xFF393939),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(29),
                topLeft: Radius.circular(29))),
        child: Text(
          "$text",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
