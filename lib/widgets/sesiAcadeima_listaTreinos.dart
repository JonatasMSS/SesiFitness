import 'package:flutter/material.dart';

import 'package:sesi_fitness/widgets/sesiAcademia_treino.dart';

class SesiacadeimaListatreinos extends StatelessWidget {
  SesiacadeimaListatreinos({
    Key? key,
    this.titleList = "NONE",
  }) : super(key: key);
  final String titleList;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: Color(0xFFDCDCDC),
      title: Text(
        titleList,
        style: const TextStyle(fontSize: 25),
      ),
      children: [
        SesiacademiaTreino(assetImage: 'assets/images/treino.png'),
      ],
    );
  }
}
