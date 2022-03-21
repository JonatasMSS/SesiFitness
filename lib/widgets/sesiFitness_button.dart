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
<<<<<<< HEAD
        if (cpf == "") {
          Get.snackbar(
            'Deu certo',
            "Usuário  encontrado",
            colorText: const Color(0xFFFFFFFF),
            backgroundColor: const Color(0xFFB41212),
          );
        } else {
          Get.snackbar(
            'Error',
            "Usuário não encontrado",
            colorText: const Color(0xFFFFFFFF),
            backgroundColor: const Color(0xFFB41212),
          );
        }
=======
        Get.snackbar(
          'Sucesso!',
          "Login com sucesso!",
          colorText: const Color(0xFFFFFFFF),
          backgroundColor: Color.fromARGB(255, 30, 109, 255),
        );
        Get.offAndToNamed('/meusTreinos');
>>>>>>> c4d7806ab5bda4acbbac9eb296eb01ecbd512ddb
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: const Color(0xFF0DFFA6),
      ),
      child: Container(
        height: 20,
        child: Text(
          textDesc,
          style: const TextStyle(
              color: Color(0xFF005A6F), fontSize: 25, height: 1),
          textAlign: TextAlign.center,
        ),
        margin: const EdgeInsets.all(10),
      ),
    );
  }
}
