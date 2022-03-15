import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SesifitnessForm extends StatelessWidget {
  const SesifitnessForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      width: context.widthTransformer(reducedBy: 50),
      height: 40,
      alignment: Alignment.center,
      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
            label: Center(
              child: Text("Insira seu CPF"),
            ),
          ),
        ),
      ),
    );
  }
}
