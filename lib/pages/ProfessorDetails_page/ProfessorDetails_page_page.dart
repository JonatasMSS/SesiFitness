import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_aluno.dart';

import '../../widgets/sesiAcadeima_listaTreinos.dart';
import '../../widgets/sesiAcademia.appbarButtons.dart';
import '../../widgets/sesiFitness_appbar.dart';

import './ProfessorDetails_page_controller.dart';

class ProfessorDetailsPagePage extends GetView<ProfessorDetailsPageController> {
  const ProfessorDetailsPagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SesifitnessAppbar(),
      backgroundColor: const Color(0xFFEFEFEF),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SesiacademiaAppbarbuttons(
            state: false,
            descText: "Alunos do Professor " + controller.data['name'],
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    widgetAluno(
                      cardVisible: true,
                      alunoData: AlunoModel(
                          nome: "Janaina",
                          cpf: "11111111111",
                          nascimento: "",
                          dataMatric: "",
                          lastPay: ""),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                );
              }),
        ],
      )),
    );
  }
}
