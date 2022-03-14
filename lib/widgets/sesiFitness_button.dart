import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SesifitnessButton extends StatelessWidget {
  const SesifitnessButton({
    Key? key,
    this.textDesc = "TEXTO",
  }) : super(key: key);

  final String textDesc;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFF0DFFA6),
      ),
      width: context.widthTransformer(reducedBy: 60),
      height: 50,
      alignment: Alignment.center,
      child: Text(textDesc),
    );
  }
}
