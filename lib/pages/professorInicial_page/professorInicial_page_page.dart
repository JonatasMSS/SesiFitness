import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/pages/avaliacoesaAluno_page/avaliacoesaAluno_page_page.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_aluno.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_pageDrawerProfessor.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './professorInicial_page_controller.dart';

class ProfessorInicialPagePage extends GetView<ProfessorInicialPageController> {
  ProfessorInicialPagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SesiacademiaPagedrawerprofessor(nomeProf: controller.Prof.nome),
      appBar: SesifitnessAppbar(),
      backgroundColor: Color(0xFFEFEFEF),
      body: FutureBuilder(
        future: controller.returnProfAluno(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: Container(
                width: context.widthTransformer(reducedBy: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Obx(() {
                  return ListView.builder(
                    itemCount: controller
                        .alunosProf.length, //controller.allAlunos.length,
                    itemBuilder: (context, index) {
                      final AlunoModel _aluno = controller.alunosProf[index];
                      return widgetAluno(
                        alunoData: _aluno,
                      );
                    },
                  );
                }),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
