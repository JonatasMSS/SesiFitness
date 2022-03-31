import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/pages/boasvindas_page/boasvindasController.dart';

class SesifitnessButton extends StatelessWidget {
  SesifitnessButton({
    Key? key,
    this.textDesc = "TEXTO",
    this.cpf,
    required this.alunos,
  }) : super(key: key);

  final String textDesc;
  String? cpf;
  List<AlunoModel> alunos;

  void dataConfirm(String confirmation, List<AlunoModel> dataComparation) {
    for (var i = 0; i < dataComparation.length; i++) {
      if (dataComparation[i].cpf == confirmation) {
        Get.snackbar(
          "Sucesso!",
          "Login com sucesso!",
          colorText: const Color(0xFFFFFFFF),
          backgroundColor: const Color.fromARGB(255, 30, 109, 255),
          duration: const Duration(seconds: 2),
        );
        Get.offAndToNamed(
          '/meusTreinos',
          arguments: dataComparation[i],
        );
        break;
      } else if (confirmation == "1") {
        Get.snackbar(
          'Sucesso!',
          "Login como professor!",
          colorText: const Color(0xFFFFFFFF),
          backgroundColor: Color.fromARGB(255, 30, 109, 255),
          duration: const Duration(seconds: 2),
        );
        Get.offAndToNamed('/professorInit');
        break;
      } else if (confirmation == "00") {
        Get.snackbar(
          'Sucesso!',
          "Login como professor!",
          colorText: const Color(0xFFFFFFFF),
          backgroundColor: Color.fromARGB(255, 30, 109, 255),
          duration: const Duration(seconds: 2),
        );
        Get.offAndToNamed('/rodrigoPage');
        break;
      } else {
        Get.snackbar("Login incorreto", "Usuário não encontrado");
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        dataConfirm(cpf!, alunos);
        // if (dataConfirm(cpf ?? "0")) {
        //   Get.snackbar(
        //     'Sucesso!',
        //     "Login com sucesso!",
        //     colorText: const Color(0xFFFFFFFF),
        //     backgroundColor: Color.fromARGB(255, 30, 109, 255),
        //     duration: const Duration(seconds: 2),
        //   );
        //   Get.offAndToNamed(
        //     '/meusTreinos',
        //   );
        // } else if (cpf == "1") {
        //   Get.snackbar(
        //     'Sucesso!',
        //     "Login como professor!",
        //     colorText: const Color(0xFFFFFFFF),
        //     backgroundColor: Color.fromARGB(255, 30, 109, 255),
        //     duration: const Duration(seconds: 2),
        //   );
        //   Get.offAndToNamed('/professorInit');
        // } else if (cpf == "00") {
        //   Get.offAndToNamed('/rodrigoPage');
        // } else {
        //   Get.snackbar("Login incorreto", "Usuário não encontrado");
        // }
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: const Color(0xFF0DFFA6),
      ),
      child: Container(
        height: 25,
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
