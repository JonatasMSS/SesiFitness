import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SesiacademiaRealizaravaliacao extends StatelessWidget {
  const SesiacademiaRealizaravaliacao({
    Key? key,
    this.text = "None",
    this.fontSize,
    this.routeOn = true,
    this.pageRoute = "",
    this.dialog,
  }) : super(key: key);

  final String text;
  final double? fontSize;
  final bool routeOn;
  final String pageRoute;
  final Widget? dialog;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: const Color(0xFF2C4E82)),
      onPressed: () {
        if (routeOn) {
          Get.toNamed(pageRoute);
        } else {}
      },
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFFEFEFEF),
          fontSize: fontSize,
        ),
      ),
    );
  }
}
