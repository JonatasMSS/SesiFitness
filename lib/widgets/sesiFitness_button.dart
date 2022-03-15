import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SesifitnessButton extends StatelessWidget {
  SesifitnessButton({
    Key? key,
    this.textDesc = "TEXTO",
  }) : super(key: key);

  final String textDesc;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        primary: Color(0xFF0DFFA6),
      ),
      child: Container(
        child: Text(
          textDesc,
          style: TextStyle(color: Color(0xFF005A6F)),
        ),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
