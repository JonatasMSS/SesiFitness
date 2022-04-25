import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/professorModel/ProfessorModel.dart';
import 'package:sesi_fitness/pages/boasvindas_page/boasvindasController.dart';

class SesifitnessButton extends StatelessWidget {
  SesifitnessButton({
    Key? key,
    this.textDesc = "TEXTO",
    this.cpf,
    required this.alunos,
    required this.professores,
  }) : super(key: key);

  final String textDesc;
  String? cpf;
  List<AlunoModel> alunos;
  List<ProfessorModel> professores;

  void dataConfirm(String confirmation, List<AlunoModel> alunoData,
      List<ProfessorModel> profData) {
    for (var i = 0; i < alunoData.length; i++) {
      if (alunoData[i].cpf == confirmation) {
        Get.snackbar(
          "Sucesso!",
          "Login com sucesso!",
          colorText: const Color(0xFFFFFFFF),
          backgroundColor: const Color.fromARGB(255, 30, 109, 255),
          duration: const Duration(seconds: 2),
        );

        Get.offAndToNamed(
          '/meusTreinos',
          arguments: alunoData[i],
        );
        alunoData.clear();
        break;
      }
    }
    for (var i = 0; i < profData.length; i++) {
      if (profData[i].cpf == confirmation) {
        Get.snackbar(
          'Sucesso!',
          "Login como professor!",
          colorText: const Color(0xFFFFFFFF),
          backgroundColor: Color.fromARGB(255, 30, 109, 255),
          duration: const Duration(seconds: 2),
        );
        Get.offAndToNamed('/professorInit', arguments: profData[i]);

        break;
      }
    }
    if (confirmation == "00") {
      Get.snackbar(
        'Sucesso!',
        "Login como professor!",
        colorText: const Color(0xFFFFFFFF),
        backgroundColor: Color.fromARGB(255, 30, 109, 255),
        duration: const Duration(seconds: 2),
      );
      Get.offAndToNamed('/rodrigoPage');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        dataConfirm(cpf!, alunos, professores);
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
