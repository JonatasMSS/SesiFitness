import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/models/avaliacaoModel/avaliacaoModel.dart';
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
        backgroundColor: const Color(0xFFEFEFEF),
        appBar: SesifitnessAppbar(),
        body: FutureBuilder(
          future: controller.getAllAvaliacoes(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return SingleChildScrollView(
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
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.avaliacoesAluno.length,
                        itemBuilder: (_, index) {
                          final AvaliacaoModel _item =
                              controller.avaliacoesAluno[index];

                          return Column(
                            children: [
                              SesiacadeimaListatreinos(
                                padding: 0,
                                titleList: _item.id,
                                containList: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: context.widthTransformer(
                                          reducedBy: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey[300]!,
                                            offset: const Offset(1, 1),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            controller.dataPage.nome,
                                            style:
                                                const TextStyle(fontSize: 28),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          SesiacadeimaListatreinos(
                                            titleList: "Avaliação Física",
                                            initialExpanded: true,
                                            padding: 15,
                                            containList: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "P.A:",
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                  Text(
                                                    _item.avaliFisica['pa'],
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                    "F.C:",
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                  Text(
                                                    _item.avaliFisica['fc'],
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                    "Peso:",
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                  Text(
                                                    _item.avaliFisica['peso'],
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                    "Estatura:",
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                  Text(
                                                    _item.avaliFisica[
                                                        'estatura'],
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                    "IMC:",
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                  Text(
                                                    _item.avaliFisica['imc'],
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                    "Circuferência Cintura:",
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                  Text(
                                                    _item.avaliFisica[
                                                        'cirCintura'],
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                    "Circuferência Quadril:",
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                  Text(
                                                    _item.avaliFisica[
                                                        'cirQuadril'],
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                    "Gordura Corporal:",
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                  Text(
                                                    _item.avaliFisica[
                                                        'gorduraCorporal'],
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                    "Massa Muscular:",
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                  Text(
                                                    _item.avaliFisica[
                                                        'massaMuscular'],
                                                    style:
                                                        TextStyle(fontSize: 28),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SesiacadeimaListatreinos(
                                            initialExpanded: true,
                                            titleList: "Avaliação de Força",
                                            containList: [
                                              ListView.builder(
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  itemCount:
                                                      _item.avaliForca.length,
                                                  itemBuilder: (_, index) {
                                                    final _forcaData =
                                                        _item.avaliForca[index];
                                                    return Wrap(
                                                      children: [
                                                        const Text(
                                                          " Exercicio:",
                                                          style: TextStyle(
                                                            fontSize: 25,
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 5),
                                                          // color: Colors.red,
                                                          child: Text(
                                                            _forcaData[
                                                                'exercicio'],
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                fontSize: 25),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            "Carga: ",
                                                            style: TextStyle(
                                                              fontSize: 25,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            _forcaData['carga'],
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              fontSize: 25,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 10),
                                                          child: Text(
                                                            "Rep: ",
                                                            style: TextStyle(
                                                              fontSize: 25,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            _forcaData['rep'],
                                                            style: TextStyle(
                                                              fontSize: 25,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  }),
                                            ],
                                          ),
                                          SesiacadeimaListatreinos(
                                            titleList: "Flexibilidade",
                                            initialExpanded: true,
                                            containList: [
                                              Row(
                                                children: [
                                                  Text(
                                                    " 1º Tentativa:",
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                  Text(
                                                    _item.avaliFlex[
                                                        'tentativa 1'],
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    " 2º Tentativa:",
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                  Text(
                                                    _item.avaliFlex[
                                                        'tentativa 2'],
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    " 3º Tentativa:",
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                  Text(
                                                    _item.avaliFlex[
                                                        'tentativa 3'],
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SesiacadeimaListatreinos(
                                            initialExpanded: true,
                                            titleList: "Habitos de Vida",
                                            containList: [
                                              Row(
                                                children: [
                                                  Text(
                                                    " Alimentação:",
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      child: Text(
                                                        _item.habitosVida[
                                                            'alimentacao'],
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    " Ingestão de Alcool:",
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      child: Text(
                                                        _item.habitosVida[
                                                            'ingestaoAlcool'],
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    " Tempo Sentado:",
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      child: Text(
                                                        _item.habitosVida[
                                                            'tempoSentado'],
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    " Sono:",
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      child: Text(
                                                        _item.habitosVida[
                                                            'sono'],
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    " Hidratação:",
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      child: Text(
                                                        _item.habitosVida[
                                                            'hidratacao'],
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    " Fumante:",
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      child: Text(
                                                        _item.habitosVida[
                                                            'alimentacao'],
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ));
  }
}
