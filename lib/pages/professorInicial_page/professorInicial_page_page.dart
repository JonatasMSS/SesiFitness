import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_aluno.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_pageDrawerProfessor.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './professorInicial_page_controller.dart';

class ProfessorInicialPagePage extends GetView<ProfessorInicialPageController> {
  ProfessorInicialPagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SesiacademiaPagedrawerprofessor(),
      appBar: SesifitnessAppbar(),
      backgroundColor: Color(0xFFEFEFEF),
      // drawer: SesiacademiaPagedrawerprofessor(),
      body: Center(
        child: Container(
          width: context.widthTransformer(reducedBy: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListView.builder(
            itemCount: controller.allAlunos.length,
            itemBuilder: (context, index) {
              final aluno = controller.allAlunos[index];
              return widgetAluno(
                title: aluno.nome,
                cpf: aluno.cpf,
              );
            },
          ),
        ),
      ),
    );
  }
}
