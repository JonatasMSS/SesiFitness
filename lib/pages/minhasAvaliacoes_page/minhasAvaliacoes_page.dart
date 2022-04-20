import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcadeima_listaTreinos.dart';
import 'package:sesi_fitness/widgets/sesiAcademia.appbarButtons.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_pageDrawer.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './minhasAvaliacoes_controller.dart';

class MinhasAvaliacoesPage extends GetView<MinhasAvaliacoesController> {
  MinhasAvaliacoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: pageDrawer(person: controller.alunoData),
      appBar: SesifitnessAppbar(),
      body: FutureBuilder(
        future: controller.getLastAvaliacaoAluno(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
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
                            pageRoute: '/meusTreinos',
                            state: false,
                            textColor: Colors.white,
                            arg: Get.arguments,
                          ),
                        ),
                        Expanded(
                          child: SesiacademiaAppbarbuttons(
                            sizeH: 50,
                            descText: "Minhas Avaliações",
                            state: true,
                            textColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 50),
                      clipBehavior: Clip.hardEdge,
                      width: context.widthTransformer(
                        reducedBy: 9,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF1D4A8C),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/images/Ellipse 2.png'),
                          SesiacadeimaListatreinos(
                            padding: 10,
                            titleList: "Avaliação Física",
                            backColor: Color(0xFFEEEEEE),
                            containList: [
                              Row(
                                children: [
                                  Text(
                                    "P.A:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller.avaliacaoAluno.avaliFisica['pa'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "F.C:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller.avaliacaoAluno.avaliFisica['fc'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Peso:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller
                                        .avaliacaoAluno.avaliFisica['peso'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Estatura:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller
                                        .avaliacaoAluno.avaliFisica['estatura'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "IMC:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller
                                        .avaliacaoAluno.avaliFisica['imc'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Circunferência de Cintura:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller.avaliacaoAluno
                                        .avaliFisica['cirCintura'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Circunferência de Quadril:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller.avaliacaoAluno
                                        .avaliFisica['cirQuadril'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Gordura Corporal:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller.avaliacaoAluno
                                        .avaliFisica['gorduraCorporal'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Massa Muscular:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller.avaliacaoAluno
                                        .avaliFisica['massaMuscular'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SesiacadeimaListatreinos(
                            padding: 4,
                            titleList: "Avaliação de Força",
                            backColor: Color(0xFFEEEEEE),
                            containList: [
                              ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller
                                      .avaliacaoAluno.avaliForca.length,
                                  itemBuilder: (context, index) {
                                    final _itemData = controller
                                        .avaliacaoAluno.avaliForca[index];
                                    return Wrap(
                                      runAlignment: WrapAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Exercício:",
                                          style: TextStyle(fontSize: 25),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            _itemData['exercicio'],
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                        const Text(
                                          "Carga:",
                                          style: TextStyle(fontSize: 25),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "0",
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                        const Text(
                                          "Rep:",
                                          style: TextStyle(fontSize: 25),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "0",
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                      ],
                                    );
                                  })
                            ],
                          ),
                          SesiacadeimaListatreinos(
                            titleList: "Avaliação de Flexibilidade",
                            backColor: Color(0xFFEEEEEE),
                            containList: [
                              Row(
                                children: [
                                  Text(
                                    " 1º Tentativa:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Text(
                                      controller.avaliacaoAluno
                                          .avaliFlex['tentativa 1'],
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    " 2º Tentativa:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Text(
                                      controller.avaliacaoAluno
                                          .avaliFlex['tentativa 2'],
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    " 3º Tentativa:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Text(
                                      controller.avaliacaoAluno
                                          .avaliFlex['tentativa 3'],
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SesiacadeimaListatreinos(
                            titleList: "Habitos de Vida",
                            backColor: Color(0xFFEEEEEE),
                            containList: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Alimentação:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller.avaliacaoAluno
                                        .habitosVida['alimentacao'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Ingestão de álcool:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller.avaliacaoAluno
                                        .habitosVida['ingestaoAlcool'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Tempo sentado(a):",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller.avaliacaoAluno
                                        .habitosVida['tempoSentado'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Sono:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller
                                        .avaliacaoAluno.habitosVida['sono'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Hidratação:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller.avaliacaoAluno
                                        .habitosVida['hidratacao'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Fumante:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    controller
                                        .avaliacaoAluno.habitosVida['fumante'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
