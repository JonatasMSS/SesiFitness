import 'package:flutter/material.dart';
import 'package:get/get.dart';

class widgetAluno extends StatelessWidget {
  widgetAluno({
    Key? key,
    this.title,
    this.cpf,
    this.cardVisible = true,
  }) : super(key: key);

  final String? title;
  final String? cpf;
  final bool cardVisible;
  @override
  Widget build(BuildContext context) {
    if (cardVisible) {
      return Card(
        child: ListTile(
          onTap: () => Get.toNamed('/alunoDetails'),
          leading: const Icon(Icons.person, size: 40),
          title: Text(
            title ?? "NOME ALUNO",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          subtitle: Text("CPF: " + (cpf ?? "NO CPF")),
        ),
      );
    } else {
      return ListTile(
        onTap: () => Get.toNamed('/alunoDetails'),
        leading: const Icon(Icons.person, size: 40),
        title: Text(
          title ?? "NOME ALUNO",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        subtitle: Text("CPF: " + (cpf ?? "NO CPF")),
      );
    }
  }
}
