import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcadeima_listaTreinos.dart';
import 'package:sesi_fitness/widgets/sesiAcademia.appbarButtons.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_addTreino.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_pageDrawerProfessor.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_realizarAvali.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_treino.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './realizarAvaliação_page_controller.dart';

class RealizarAvaliacaoPagePage
    extends GetView<RealizarAvaliacaoPageController> {
  const RealizarAvaliacaoPagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SesiacademiaPagedrawerprofessor(),
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
                      descText: "Avaliação",
                      state: false,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
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
                            const Text(
                              "P.A:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "F.C:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "Peso:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "Estatura:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "IMC:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "Circuferência de Cintura:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "Circuferência de Quadril:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "Gordura Corporal:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "Massa Muscular:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SesiacadeimaListatreinos(
                      padding: 4,
                      titleList: "Avaliação de Força",
                      backColor: Color(0xFFEEEEEE),
                      containList: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Exercício:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Carga:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Rep:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Exercício:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Carga:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Rep:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Exercício:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Carga:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Rep:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Center(
                          child: Text(
                            "...",
                            style: TextStyle(fontSize: 30),
                          ),
                        )
                      ],
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Avaliação de Flexibilidade",
                      backColor: Color(0xFFEEEEEE),
                      containList: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Exercício:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Carga:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Rep:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Exercício:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Carga:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Rep:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Exercício:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Carga:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Rep:",
                              style: TextStyle(fontSize: 25),
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
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
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
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
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
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
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
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
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
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
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
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
                            Expanded(
                              child: Container(
                                height: 30,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF2C4E82),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Enviar dados',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
