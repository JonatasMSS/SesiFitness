import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_addTreino.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_realizarAvali.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import 'package:sesi_fitness/widgets/sesiFitness_form.dart';
import '../../widgets/sesiAcadeima_listaTreinos.dart';
import '../../widgets/sesiAcademia.appbarButtons.dart';
import '../../widgets/sesiAcademia_treino.dart';
import './alunoDetails__controller.dart';

class AlunoDetailsPage extends GetView<AlunoDetailsController> {
  const AlunoDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SesifitnessAppbar(),
      backgroundColor: Color(0xFFEFEFEF),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SesiacademiaAppbarbuttons(
                      sizeH: 50,
                      descText: "Treinos do Aluno",
                      state: true,
                      textColor: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: SesiacademiaAppbarbuttons(
                      sizeH: 50,
                      descText: "Avaliações Aluno",
                      state: false,
                      pageRoute: '/avaliacoesAluno',
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
                  Obx(() {
                    return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.lista.length,
                      itemBuilder: (_, index) {
                        final item = controller.lista[index];
                        return GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  child: Column(
                                    children: [
                                      Container(
                                        color: Colors.red,
                                        width: context.width,
                                        height: 10,
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: SesiacademiaTreino(
                            assetImage: "assets/images/treino.png",
                            title: item,
                            routerOn: false,
                          ),
                        );
                      },
                    );
                  }),
                  SesiacademiaAddtreino(),
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
                    title: "Treino de Perna",
                    repetition: "3x15 repetições",
                  ),
                  SesiacademiaAddtreino(),
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
                    title: "Treino de Perna",
                    repetition: "3x15 repetições",
                  ),
                  SesiacademiaAddtreino(),
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
                    title: "Treino de Perna",
                    repetition: "3x15 repetições",
                  ),
                  SesiacademiaAddtreino(),
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
                    title: "Treino de Perna",
                    repetition: "3x15 repetições",
                  ),
                  SesiacademiaAddtreino(),
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
                    title: "Treino de Perna",
                    repetition: "3x15 repetições",
                  ),
                  SesiacademiaAddtreino(),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: const SesiacademiaRealizaravaliacao(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
