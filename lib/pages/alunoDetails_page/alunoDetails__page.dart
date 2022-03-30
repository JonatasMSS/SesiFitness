import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/models/checkboxModel.dart';
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
                        return DialogEdition(
                          textTitle: "Editar treino",
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
                  DialogEdition(
                    textTitle: "Adicionar Treino",
                    child: const SesiacademiaAddtreino(),
                  ),
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

class DialogEdition extends StatelessWidget {
  DialogEdition({Key? key, required this.child, this.textTitle = "NONE TEXT"})
      : super(key: key);

  final Widget child;
  final String textTitle;
  final List<Checkboxmodel> dados = [
    Checkboxmodel(texto: "Treino A"),
    Checkboxmodel(texto: "Treino B"),
    Checkboxmodel(texto: "Treino A"),
    Checkboxmodel(texto: "Treino B"),
    Checkboxmodel(texto: "Treino A"),
    Checkboxmodel(texto: "Treino B"),
    Checkboxmodel(texto: "Treino A"),
    Checkboxmodel(texto: "Treino B"),
    Checkboxmodel(texto: "Treino B"),
  ];
  RxString data = "".obs;

  void itensChecked() {
    List<Checkboxmodel> itensChecked = List.from(
      dados.where((dado) => dado.checked),
    );
    itensChecked.forEach((dado) {
      print(dado.texto);
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
                      titleList: "Treino",
                      containList: [
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: dados.length,
                            itemBuilder: (_, index) {
                              return SesiacademiaCheckboxtreino(
                                item: dados[index],
                              );
                            }),
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
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        itensChecked();
                        print(data);
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
