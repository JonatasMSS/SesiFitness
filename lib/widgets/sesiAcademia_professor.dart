import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesi_fitness/models/professorModel/ProfessorModel.dart';

class widgetProfessor extends StatelessWidget {
  const widgetProfessor({
    Key? key,
    required this.professorModel,
    this.cardVisible = true,
  }) : super(key: key);

  final ProfessorModel professorModel;
  final bool cardVisible;
  @override
  Widget build(BuildContext context) {
    if (cardVisible) {
      return Card(
        child: ListTile(
          onTap: () => Get.toNamed(
            '/professorDetails',
            arguments: professorModel,
          ),
          leading: const Icon(Icons.person, size: 40),
          title: Text(
            professorModel.nome,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          subtitle: Text("CPF: " + professorModel.cpf),
        ),
      );
    } else {
      return ListTile(
        onTap: () => Get.toNamed('/professorDetails'),
        leading: const Icon(Icons.person, size: 40),
        title: Text(
          professorModel.nome,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        subtitle: Text("CPF: " + professorModel.cpf),
      );
    }
  }
}
