import 'package:flutter/material.dart';

import 'package:sesi_fitness/widgets/sesiAcademia_treino.dart';

class SesiacadeimaListatreinos extends StatelessWidget {
  SesiacadeimaListatreinos({
    Key? key,
    this.titleList = "NONE",
    this.containList,
    this.backColor,
  }) : super(key: key);
  final String titleList;
  final List<Widget>? containList;
  final Color? backColor;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: Color(0xFFDCDCDC),
      backgroundColor: backColor,
      title: Text(
        titleList,
        style: const TextStyle(fontSize: 25),
      ),
      children: containList ?? [],
    );
  }
}
