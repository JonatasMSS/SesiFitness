import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_treino.dart';

class SesiacadeimaListatreinos extends StatelessWidget {
  const SesiacadeimaListatreinos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: Color(0xFFDCDCDC),
      title: Text(
        "Segunda",
        style: TextStyle(fontSize: 25),
      ),
      children: [
        SesiacademiaTreino(assetImage: 'assets/images/treino.png'),
      ],
    );
  }
}
