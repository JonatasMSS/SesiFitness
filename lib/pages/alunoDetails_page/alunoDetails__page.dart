import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/models/checkboxModel.dart';
import 'package:sesi_fitness/repository/treinos/treinos.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_addTreino.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_checkBoxTreino.dart';
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
                      arg: controller.dataPage,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                controller.dataPage['name'] ?? "NO NAME",
                style: const TextStyle(fontSize: 40),
              ),
              const SizedBox(
                height: 20,
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
                          onLongPress: () {
                            controller.lista.removeAt(index);
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
                  DialogEdition(
                    textTitle: "Adicionar Treino",
                    child: const SesiacademiaAddtreino(),
                  )
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
                  const SesiacademiaAddtreino(),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: SesiacademiaRealizaravaliacao(
                  text: "Realizar Avaliação",
                  fontSize: 25,
                  pageRoute: "/realiAvali",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DialogEdition extends GetView<AlunoDetailsController> {
  DialogEdition({
    Key? key,
    required this.child,
    this.textTitle = "NONE TEXT",
  }) : super(key: key);

  final Widget child;
  final String textTitle;
  // final List<Checkboxmodel> dados = [
  //   Checkboxmodel(texto: "Treino A"),
  //   Checkboxmodel(texto: "Treino B"),
  //   Checkboxmodel(texto: "Treino A"),
  //   Checkboxmodel(texto: "Treino B"),
  //   Checkboxmodel(texto: "Treino A"),
  //   Checkboxmodel(texto: "Treino B"),
  //   Checkboxmodel(texto: "Treino A"),
  //   Checkboxmodel(texto: "Treino B"),
  //   Checkboxmodel(texto: "Treino B"),
  // ];
  final List<List<Checkboxmodel>> _dadosTreinos = [
    Treinos().getTreinosPeito(),
    Treinos().getTreinosCostas(),
    Treinos().getTreinosPerna(),
    Treinos().getTreinosBiceps(),
    Treinos().getTreinosTriceps(),
    Treinos().getTreinosCore(),
    Treinos().getTreinosAerobio(),
  ];

  RxString data = "".obs;
  RxString data2 = "".obs;

  void itensChecked(List dataIni) {
    List<Checkboxmodel> itensChecked = [];
    for (var i in _dadosTreinos) {
      itensChecked.addAll(i.where((dado) => dado.checked));
    }
    itensChecked.forEach((dado) {
      dataIni.add(dado.texto);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: Color(0xFF274776),
                      width: context.width,
                      height: 80,
                      child: Text(
                        textTitle,
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Treinos",
                      padding: 10,
                      containList: [
                        SesiacadeimaListatreinos(
                          titleList: "Peito",
                          containList: [
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: Treinos().getTreinosPeito().length,
                              itemBuilder: (_, index) {
                                return SesiacademiaCheckboxtreino(
                                  item: _dadosTreinos[0][index],
                                );
                              },
                            ),
                          ],
                        ),
                        SesiacadeimaListatreinos(
                          titleList: "Costas",
                          containList: [
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: Treinos().getTreinosCostas().length,
                              itemBuilder: (_, index) {
                                return SesiacademiaCheckboxtreino(
                                  item: _dadosTreinos[1][index],
                                );
                              },
                            )
                          ],
                        ),
                        SesiacadeimaListatreinos(
                          titleList: "Pernas",
                          containList: [
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: Treinos().getTreinosPerna().length,
                              itemBuilder: (_, index) {
                                return SesiacademiaCheckboxtreino(
                                    item: _dadosTreinos[2][index]);
                              },
                            )
                          ],
                        ),
                        SesiacadeimaListatreinos(
                          titleList: "Biceps",
                          containList: [
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: Treinos().getTreinosBiceps().length,
                              itemBuilder: (_, index) {
                                return SesiacademiaCheckboxtreino(
                                  item: _dadosTreinos[3][index],
                                );
                              },
                            )
                          ],
                        ),
                        SesiacadeimaListatreinos(
                          titleList: "Triceps",
                          containList: [
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: Treinos().getTreinosTriceps().length,
                              itemBuilder: (_, index) {
                                return SesiacademiaCheckboxtreino(
                                  item: _dadosTreinos[4][index],
                                );
                              },
                            )
                          ],
                        ),
                        SesiacadeimaListatreinos(
                          titleList: "Core",
                          containList: [
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: Treinos().getTreinosCore().length,
                              itemBuilder: (_, index) {
                                return SesiacademiaCheckboxtreino(
                                  item: _dadosTreinos[5][index],
                                );
                              },
                            )
                          ],
                        ),
                        SesiacadeimaListatreinos(
                          titleList: "Aerobio",
                          containList: [
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: Treinos().getTreinosAerobio().length,
                              itemBuilder: (_, index) {
                                return SesiacademiaCheckboxtreino(
                                  item: _dadosTreinos[6][index],
                                );
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesifitnessForm(
                      Data: data,
                      backgroundColor: Colors.grey[350]!,
                      borderSide: Colors.grey[350]!,
                      widthReduce: 30,
                      hintText: "Quantidade de repetições",
                      heightCursor: 40,
                      inputTypeText: TextInputType.name,
                      maxDigits: 20,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesifitnessForm(
                      Data: data2,
                      backgroundColor: Colors.grey[350]!,
                      borderSide: Colors.grey[350]!,
                      widthReduce: 30,
                      hintText: "Observações do treino",
                      heightCursor: 40,
                      inputTypeText: TextInputType.multiline,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesifitnessForm(
                      Data: data2,
                      backgroundColor: Colors.grey[350]!,
                      borderSide: Colors.grey[350]!,
                      widthReduce: 30,
                      hintText: "Cadência do treino",
                      heightCursor: 40,
                      inputTypeText: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SesifitnessForm(
                      Data: data2,
                      backgroundColor: Colors.grey[350]!,
                      borderSide: Colors.grey[350]!,
                      widthReduce: 30,
                      hintText: "Carga do treino",
                      heightCursor: 40,
                      inputTypeText: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print(controller.lista);
                        itensChecked(controller.lista);
                        print(controller.lista);
                        print(data);
                        print(data2);
                        navigator?.pop();
                      },
                      child: Text("ENVIAR DADOS"),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: child,
    );
  }
}
