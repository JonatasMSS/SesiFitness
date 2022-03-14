import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SesifitnessForm extends StatelessWidget {
  const SesifitnessForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0x00ffffff),
      ),
      width: context.widthTransformer(reducedBy: 60),
      height: 50,
      alignment: Alignment.center,
    );
  }
}
