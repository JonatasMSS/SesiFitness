import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';

class widgetAluno extends StatelessWidget {
  widgetAluno({
    Key? key,
    this.alunoData,
    this.cardVisible = true,
  }) : super(key: key);

  final AlunoModel? alunoData;
  final bool cardVisible;
  @override
  Widget build(BuildContext context) {
    if (cardVisible) {
      return Card(
        child: ListTile(
          onTap: () => Get.toNamed(
            '/alunoDetails',
            arguments: alunoData,
          ),
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
