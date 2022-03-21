import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SesifitnessButton extends StatelessWidget {
  const SesifitnessButton({Key? key, this.textDesc = "TEXTO", this.cpf = ""})
      : super(key: key);

  final String textDesc;
  final String cpf;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.snackbar(
          'Sucesso!',
          "Login com sucesso!",
          colorText: const Color(0xFFFFFFFF),
          backgroundColor: Color.fromARGB(255, 30, 109, 255),
        );
        Get.offAndToNamed('/meusTreinos');
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: const Color(0xFF0DFFA6),
      ),
      child: Container(
        child: Text(
          textDesc,
          style: const TextStyle(color: Color(0xFF005A6F)),
        ),
        margin: const EdgeInsets.all(10),
      ),
    );
  }
}
