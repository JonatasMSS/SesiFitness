import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/widgets/sesiFitness_form.dart';

import 'sesiAcadeima_listaTreinos.dart';

class widgetAluno extends StatelessWidget {
  widgetAluno({
    Key? key,
    this.alunoData,
    this.route = '/alunoDetails',
    this.cardVisible = true,
    this.dialog = false,
  }) : super(key: key);

  final AlunoModel? alunoData;
  final String route;
  final bool cardVisible;
  final bool dialog;

  final RxString _avalFlex = "".obs;
  final RxString _avalHvida = "".obs;
  List<String> _itens = [];

  @override
  Widget build(BuildContext context) {
    if (cardVisible) {
      return Card(
        child: ListTile(
          onTap: () => Get.toNamed(
            route,
            arguments: alunoData,
          ),
          onLongPress: () {
            if (dialog) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  //Variaveis de Avaliações Físicas
                  final RxString _pa = "".obs,
                      _fc = "".obs,
                      _peso = "".obs,
                      _estatura = "".obs,
                      _imc = "".obs,
                      _cirCintura = "".obs,
                      _cirQuadril = "".obs,
                      _gorduraCorporal = "".obs,
                      _massaMuscular = "".obs;

                  final List<Map<String, RxString>> _exercicios = [
                    {
                      "exercicio": "Exercicio".obs,
                      "carga": "cargaExer".obs,
                      "rep": "rep".obs,
                    }
                  ].obs;

                  return StatefulBuilder(builder: (context, setState) {
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
                              color: const Color(0xFF274776),
                              width: context.width,
                              height: 80,
                              child: const Text(
                                "Avaliação",
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
                              titleList: "Avaliação Fisica",
                              containList: [
                                SesifitnessForm(
                                  Data: _pa,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "P.A",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _fc,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "F.C",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _peso,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Peso",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _estatura,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Estatura",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _imc,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "IMC",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _cirCintura,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Circunferência da Cintura",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _cirQuadril,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Circunferência de Quadril",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _gorduraCorporal,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Gordura Corporal",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _massaMuscular,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Massa muscular",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SesiacadeimaListatreinos(
                              titleList: "Avaliação de Força",
                              padding: 10,
                              containList: [
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: _exercicios.length,
                                  itemBuilder: (_, index) {
                                    final Map<String, dynamic> _itemData =
                                        _exercicios[index];
                                    return Column(
                                      children: [
                                        SesiacadeimaListatreinos(
                                            titleList: "Exercicio ${index + 1}",
                                            containList: [
                                              SesifitnessForm(
                                                Data: _itemData['exercicio'],
                                                backgroundColor:
                                                    Colors.grey[350]!,
                                                borderSide: Colors.grey[350]!,
                                                widthReduce: 30,
                                                hintText: "Nome do exercício",
                                                heightCursor: 40,
                                                inputTypeText:
                                                    TextInputType.name,
                                                maxDigits: 20,
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              SesifitnessForm(
                                                Data: _itemData['carga'],
                                                backgroundColor:
                                                    Colors.grey[350]!,
                                                borderSide: Colors.grey[350]!,
                                                widthReduce: 30,
                                                hintText: "Carga",
                                                heightCursor: 40,
                                                inputTypeText:
                                                    TextInputType.name,
                                                maxDigits: 20,
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              SesifitnessForm(
                                                Data: _itemData['rep'],
                                                backgroundColor:
                                                    Colors.grey[350]!,
                                                borderSide: Colors.grey[350]!,
                                                widthReduce: 30,
                                                hintText: "Repetições",
                                                heightCursor: 40,
                                                inputTypeText:
                                                    TextInputType.name,
                                                maxDigits: 20,
                                              ),
                                            ]),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(
                                      (() => {
                                            _exercicios.add(
                                              {
                                                "exercicio": "nome".obs,
                                                "carga": "carga".obs,
                                                "rep": "rep".obs,
                                              },
                                            )
                                          }),
                                    );
                                  },
                                  child: Column(
                                    children: const [
                                      Icon(Icons.add_circle),
                                      Text("Adicionar exercicio"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SesiacadeimaListatreinos(
                              titleList: "Avaliação de Flexibilidade",
                              containList: [
                                ListView(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  children: [
                                    SesiacadeimaListatreinos(
                                      titleList: "Tentativa 1",
                                      containList: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        SesifitnessForm(
                                          Data: _avalFlex,
                                          backgroundColor: Colors.grey[350]!,
                                          borderSide: Colors.grey[350]!,
                                          widthReduce: 30,
                                          hintText: "Alongamento(CM)",
                                          heightCursor: 40,
                                          inputTypeText: TextInputType.name,
                                          maxDigits: 20,
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                    SesiacadeimaListatreinos(
                                      titleList: "Tentativa 2",
                                      containList: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        SesifitnessForm(
                                          Data: _avalFlex,
                                          backgroundColor: Colors.grey[350]!,
                                          borderSide: Colors.grey[350]!,
                                          widthReduce: 30,
                                          hintText: "Alongamento(CM)",
                                          heightCursor: 40,
                                          inputTypeText: TextInputType.name,
                                          maxDigits: 20,
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        )
                                      ],
                                    ),
                                    SesiacadeimaListatreinos(
                                      titleList: "Tentativa 3",
                                      containList: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        SesifitnessForm(
                                          Data: _avalFlex,
                                          backgroundColor: Colors.grey[350]!,
                                          borderSide: Colors.grey[350]!,
                                          widthReduce: 30,
                                          hintText: "Alongamento(CM)",
                                          heightCursor: 40,
                                          inputTypeText: TextInputType.name,
                                          maxDigits: 20,
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SesiacadeimaListatreinos(
                              titleList: "Hábitos de vida",
                              containList: [
                                SesifitnessForm(
                                  Data: _avalHvida,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Alimentação",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _avalHvida,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Ingestão de Álcool",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _avalHvida,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Tempo sentado(a)",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _avalHvida,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Sono",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _avalHvida,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Hidratação",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _avalHvida,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Fumante",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                print(_exercicios);
                              },
                              child: const Text("REGISTRAR AVALIAÇÃO"),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
                },
              );
            }
          },
          leading: const Icon(Icons.person, size: 40),
          title: Text(
            alunoData!.nome,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          subtitle: Text("CPF: " + alunoData!.cpf),
        ),
      );
    } else {
      return ListTile(
        //onTap: () => Get.toNamed('/alunoDetails'),
        leading: const Icon(Icons.person, size: 40),
        title: Text(
          alunoData!.nome,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        subtitle: Text("CPF: " + alunoData!.cpf),
      );
    }
  }
}
