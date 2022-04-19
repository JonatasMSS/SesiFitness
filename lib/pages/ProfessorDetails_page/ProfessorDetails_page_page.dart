import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_aluno.dart';

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
      body: FutureBuilder(
        future: controller.returnProfAluno(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SingleChildScrollView(
                child: Column(
              children: [
                SesiacademiaAppbarbuttons(
                  state: false,
                  descText: "Alunos do Professor " + controller.professor.nome,
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.professor.listaAlunos.length,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    final AlunoModel _aluno = controller.alunosProf[index];
                    return Column(
                      children: [
                        widgetAluno(
                          cardVisible: true,
                          alunoData: _aluno,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  },
                ),
              ],
            ));
          }
        },
      ),
    );
  }
}
