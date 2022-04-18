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
                          children: const [
                            Text(
                              "P.A:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "F.C:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "Peso:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "Estatura:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "IMC:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "Circunferência de Cintura:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "Circunferência de Quadril:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "Gordura Corporal:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "Massa Muscular:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
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
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Exercício:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    "Carga:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    "Rep:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(fontSize: 25),
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
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Exercício:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    "Carga:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    "Rep:",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              );
                            })
                      ],
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Habitos de Vida",
                      backColor: Color(0xFFEEEEEE),
                      containList: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Alimentação:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Ingestão de álcool:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Tempo sentado(a):",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Sono:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Hidratação:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Fumante:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              " DATA",
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
      ),
    );
  }
}
