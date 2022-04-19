import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/models/avaliacaoModel/avaliacaoModel.dart';
import 'package:sesi_fitness/widgets/sesiAcadeima_listaTreinos.dart';
import 'package:sesi_fitness/widgets/sesiAcademia.appbarButtons.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './todasAvaliacoes_controller.dart';

class TodasAvaliacoesPage extends GetView<TodasAvaliacoesController> {
  const TodasAvaliacoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SesifitnessAppbar(),
      body: FutureBuilder(
        future: controller.getAllAvaliacoesFromAluno(),
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
                    descText: "Avaliações do aluno",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.avaliacoesAluno.length,
                    itemBuilder: (_, index) {
                      final AvaliacaoModel _item =
                          controller.avaliacoesAluno[index];

                      return Column(
                        children: [
                          SesiacadeimaListatreinos(
                            titleList: _item.id,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
