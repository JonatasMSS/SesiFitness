import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sesi_fitness/models/dayModel/dayModel.dart';
import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';
import 'package:sesi_fitness/widgets/sesiAcadeima_listaTreinos.dart';
import 'package:sesi_fitness/widgets/sesiAcademia.appbarButtons.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_pageDrawer.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_treino.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';

import './meusTreinos_controller.dart';

class MeusTreinosPage extends GetView<MeusTreinosController> {
  MeusTreinosPage({Key? key}) : super(key: key);

  DayModel returnTrainByDay(String name) {
    final dataGet = controller.treinosAluno;
    dynamic data;
    for (var i = 0; i < dataGet.length; i++) {
      if (dataGet[i].diaSemana == name) {
        data = dataGet[i];
      }
    }
    return data ?? DayModel(id: "", alunoId: "", diaSemana: "", treinosDia: []);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: pageDrawer(person: controller.alunoData),
      backgroundColor: Color(0xFFEFEFEF),
      appBar: SesifitnessAppbar(),
      body: FutureBuilder(
        future: controller.findTreinosById(controller.alunoData.id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SesiacademiaAppbarbuttons(
                            sizeH: 50,
                            descText: "Meus Treinos",
                            state: true,
                            textColor: Colors.black,
                          ),
                        ),
                        Expanded(
                          child: SesiacademiaAppbarbuttons(
                            sizeH: 50,
                            descText: "Minhas Avaliações",
                            state: false,
                            pageRoute: '/minhasAvaliacoes',
                            arg: controller.alunoData,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Segunda",
                      containList: [
                        DataListTreino(
                            BdataTreino: returnTrainByDay("segunda")),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Terça",
                      containList: [
                        DataListTreino(BdataTreino: returnTrainByDay("terca"))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Quarta",
                      containList: [
                        SesiacademiaTreino(
                          assetImage: 'assets/images/treino.png',
                          pageRoute: '/treinoDetalhado',
                          title: "Treino A",
                          repetition: "3x15 repetições",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Quinta",
                      containList: [
                        SesiacademiaTreino(
                          assetImage: 'assets/images/treino.png',
                          pageRoute: '/treinoDetalhado',
                          title: "Treino A",
                          repetition: "3x15 repetições",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Sexta",
                      containList: [
                        SesiacademiaTreino(
                          assetImage: 'assets/images/treino.png',
                          pageRoute: '/treinoDetalhado',
                          title: "Treino A",
                          repetition: "3x15 repetições",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Sábado",
                      containList: [
                        SesiacademiaTreino(
                          assetImage: 'assets/images/treino.png',
                          pageRoute: '/treinoDetalhado',
                          title: "Treino A",
                          repetition: "3x15 repetições",
                        ),
                      ],
                    ),
                  ],
                ),
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

class DataListTreino extends StatelessWidget {
  const DataListTreino({
    Key? key,
    required this.BdataTreino,
  }) : super(key: key);

  final DayModel BdataTreino;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: BdataTreino.treinosDia.length,
        itemBuilder: (_, index) {
          final treino = BdataTreino.treinosDia[index];
          return SesiacademiaTreino(
            assetImage: 'assets/images/treino.png',
            pageRoute: '/treinoDetalhado',
            title: treino.tituloTreino,
            repetition: treino.repTreino,
          );
        });
  }
}
