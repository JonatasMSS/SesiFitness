import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_treino.dart';

class SesiacadeimaListatreinos extends StatelessWidget {
  const SesiacadeimaListatreinos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text(
        "Segunda",
        style: TextStyle(fontSize: 25),
      ),
      children: [
        SesiacademiaTreino(),
      ],
    );
  }
}
