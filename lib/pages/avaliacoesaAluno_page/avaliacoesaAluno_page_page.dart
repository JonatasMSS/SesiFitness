import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcadeima_listaTreinos.dart';
import 'package:sesi_fitness/widgets/sesiAcademia.appbarButtons.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_aluno.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_pageDrawer.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_pageDrawerProfessor.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './avaliacoesaAluno_page_controller.dart';

class AvaliacoesaAlunoPagePage extends GetView<AvaliacoesaAlunoPageController> {
  const AvaliacoesaAlunoPagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SesiacademiaPagedrawerprofessor(),
      backgroundColor: Color(0xFFEFEFEF),
      appBar: SesifitnessAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SesiacademiaAppbarbuttons(
                    state: false,
                    descText: "Treinos do aluno",
                    textColor: Colors.white,
                    pageRoute: '/alunoDetails',
                    arg: controller.dataPage,
                  ),
                ),
                Expanded(
                  child: SesiacademiaAppbarbuttons(
                    state: true,
                    descText: "Avaliações Aluno",
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              width: context.widthTransformer(reducedBy: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[350]!,
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  alunoData(),
                  SesiacadeimaListatreinos(
                    titleList: "27/12/02",
                    padding: 0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class alunoData extends widgetAluno {
  alunoData({Key? key})
      : super(
          key: key,
          cardVisible: false,
        );
}
