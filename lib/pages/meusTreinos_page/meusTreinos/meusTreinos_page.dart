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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: pageDrawer(person: Get.arguments),
      backgroundColor: Color(0xFFEFEFEF),
      appBar: SesifitnessAppbar(),
      body: FutureBuilder(
        future: controller.findAllTreinos(),
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
                            arg: Get.arguments,
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
                        DataListTreino(dia: 'segunda'),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Terça",
                      containList: [DataListTreino(dia: 'terca')],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Quarta",
                      containList: [DataListTreino(dia: 'quarta')],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Quinta",
                      containList: [DataListTreino(dia: 'quinta')],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Sexta",
                      containList: [
                        DataListTreino(dia: 'sexta'),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Sábado",
                      containList: [
                        DataListTreino(dia: 'sabado'),
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

class DataListTreino extends GetView<MeusTreinosController> {
  DataListTreino({
    Key? key,
    required this.dia,
  }) : super(key: key);

  String dia;

  final Map<String, int> _intToName = {
    'segunda': 3,
    'terca': 5,
    'quarta': 0,
    'quinta': 1,
    'sexta': 4,
    'sabado': 2,
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount:
            controller.treinosAluno[_intToName[dia]!].listaTreinos.length,
        itemBuilder: (_, index) {
          final treino =
              controller.treinosAluno[_intToName[dia]!].listaTreinos[index];

          return SesiacademiaTreino(
            assetImage: 'assets/images/treino.png',
            pageRoute: '/treinoDetalhado',
            title: treino.id,
            repetition: treino.data()['repTreino'] ?? "Nothing",
            cadenc: treino.data()['cadencia'],
            descanso: treino.data()['descanso'],
            observ: treino.data()['observacao'],
            carga: treino.data()['carga'],
          );
        });
  }
}
