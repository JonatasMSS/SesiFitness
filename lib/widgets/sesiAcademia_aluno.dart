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
  }) : super(key: key);

  final AlunoModel? alunoData;
  final String route;
  final bool cardVisible;
  final RxString _avalFisica = "".obs;
  final RxString _avalForca = "".obs;
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
                          color: const Color(0xFF274776),
                          width: context.width,
                          height: 80,
                          child: const Text(
                            "Avaliação",
                            style: const TextStyle(
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
                            ListView(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: [
                                SesifitnessForm(
                                  Data: _avalFisica,
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
                                  Data: _avalFisica,
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
                                  Data: _avalFisica,
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
                                  Data: _avalFisica,
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
                                  Data: _avalFisica,
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
                                  Data: _avalFisica,
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
                                  Data: _avalFisica,
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
                                  Data: _avalFisica,
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
                                  Data: _avalFisica,
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
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SesiacadeimaListatreinos(
                          titleList: "Avaliação de Força",
                          containList: [
                            ListView(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: [
                                SesifitnessForm(
                                  Data: _avalForca,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Exercício",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _avalForca,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Carga",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SesifitnessForm(
                                  Data: _avalForca,
                                  backgroundColor: Colors.grey[350]!,
                                  borderSide: Colors.grey[350]!,
                                  widthReduce: 30,
                                  hintText: "Repetição",
                                  heightCursor: 40,
                                  inputTypeText: TextInputType.name,
                                  maxDigits: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
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
                                    ListView(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      children: [
                                        SesifitnessForm(
                                          Data: _avalFlex,
                                          backgroundColor: Colors.grey[350]!,
                                          borderSide: Colors.grey[350]!,
                                          widthReduce: 30,
                                          hintText: "Exercício",
                                          heightCursor: 40,
                                          inputTypeText: TextInputType.name,
                                          maxDigits: 20,
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        SesifitnessForm(
                                          Data: _avalFlex,
                                          backgroundColor: Colors.grey[350]!,
                                          borderSide: Colors.grey[350]!,
                                          widthReduce: 30,
                                          hintText: "Carga",
                                          heightCursor: 40,
                                          inputTypeText: TextInputType.name,
                                          maxDigits: 20,
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        SesifitnessForm(
                                          Data: _avalFlex,
                                          backgroundColor: Colors.grey[350]!,
                                          borderSide: Colors.grey[350]!,
                                          widthReduce: 30,
                                          hintText: "Repetição",
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
                                SesiacadeimaListatreinos(
                                  titleList: "Tentativa 2",
                                  containList: [
                                    ListView(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      children: [
                                        SesifitnessForm(
                                          Data: _avalFlex,
                                          backgroundColor: Colors.grey[350]!,
                                          borderSide: Colors.grey[350]!,
                                          widthReduce: 30,
                                          hintText: "Exercício",
                                          heightCursor: 40,
                                          inputTypeText: TextInputType.name,
                                          maxDigits: 20,
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        SesifitnessForm(
                                          Data: _avalFlex,
                                          backgroundColor: Colors.grey[350]!,
                                          borderSide: Colors.grey[350]!,
                                          widthReduce: 30,
                                          hintText: "Carga",
                                          heightCursor: 40,
                                          inputTypeText: TextInputType.name,
                                          maxDigits: 20,
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        SesifitnessForm(
                                          Data: _avalFlex,
                                          backgroundColor: Colors.grey[350]!,
                                          borderSide: Colors.grey[350]!,
                                          widthReduce: 30,
                                          hintText: "Repetição",
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
                                SesiacadeimaListatreinos(
                                  titleList: "Tentativa 3",
                                  containList: [
                                    ListView(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      children: [
                                        SesifitnessForm(
                                          Data: _avalFlex,
                                          backgroundColor: Colors.grey[350]!,
                                          borderSide: Colors.grey[350]!,
                                          widthReduce: 30,
                                          hintText: "Exercício",
                                          heightCursor: 40,
                                          inputTypeText: TextInputType.name,
                                          maxDigits: 20,
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        SesifitnessForm(
                                          Data: _avalFlex,
                                          backgroundColor: Colors.grey[350]!,
                                          borderSide: Colors.grey[350]!,
                                          widthReduce: 30,
                                          hintText: "Carga",
                                          heightCursor: 40,
                                          inputTypeText: TextInputType.name,
                                          maxDigits: 20,
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        SesifitnessForm(
                                          Data: _avalFlex,
                                          backgroundColor: Colors.grey[350]!,
                                          borderSide: Colors.grey[350]!,
                                          widthReduce: 30,
                                          hintText: "Repetição",
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
                            ListView(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: [
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
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("REGISTRAR AVALIAÇÃO"),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
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
