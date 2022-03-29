import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_aluno.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_pageDrawerProfessor.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './professorInicial_page_controller.dart';

class ProfessorInicialPagePage extends GetView<ProfessorInicialPageController> {
  ProfessorInicialPagePage({Key? key}) : super(key: key);

  final List<String> data = ["Joao", "Maria", "Carlos"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SesiacademiaPagedrawerprofessor(),
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
            itemCount: data.length,
            itemBuilder: (context, index) {
              return widgetAluno(
                title: data[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
