import 'package:get/get.dart';
import 'package:flutter/material.dart';
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
      drawer: pageDrawer(person: controller.alunoData),
      backgroundColor: Color(0xFFEFEFEF),
      appBar: SesifitnessAppbar(),
      body: SingleChildScrollView(
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
                  SesiacademiaTreino(
                    assetImage: 'assets/images/treino.png',
                    pageRoute: '/treinoDetalhado',
                    title: "Treino de Perna",
                    repetition: "3x15 repetições",
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SesiacadeimaListatreinos(
                titleList: "Terça",
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
      ),
    );
  }
}
