import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SesiacademiaRealizaravaliacao extends StatelessWidget {
  SesiacademiaRealizaravaliacao({
    Key? key,
    this.text = "None",
    this.fontSize,
    this.routeOn = true,
    this.pageRoute = "",
    this.event,
  }) : super(key: key);

  final String text;
  final double? fontSize;
  final bool routeOn;
  final String pageRoute;
  final Function? event;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Color(0xFF2C4E82)),
          onPressed: () {
            if (routeOn) {
              Get.toNamed(pageRoute);
            } else {
              event;
            }
          },
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xFFEFEFEF),
              fontSize: fontSize,
            ),
          ),
        ),
      ],
    );
  }
}
