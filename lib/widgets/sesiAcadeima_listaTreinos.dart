import 'package:flutter/material.dart';

import 'package:sesi_fitness/widgets/sesiAcademia_treino.dart';

class SesiacadeimaListatreinos extends StatelessWidget {
  SesiacadeimaListatreinos({
    Key? key,
    this.titleList = "NONE",
    this.containList,
    this.backColor,
    this.padding,
    this.initialExpanded = false,
  }) : super(key: key);
  final String titleList;
  final List<Widget>? containList;
  final Color? backColor;
  final double? padding;
  final bool initialExpanded;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: initialExpanded,
      collapsedBackgroundColor: const Color(0xFFDCDCDC),
      backgroundColor: backColor,
      childrenPadding: EdgeInsets.only(left: padding ?? 1, right: padding ?? 1),
      title: Text(
        titleList,
        style: const TextStyle(fontSize: 25),
      ),
      children: containList ?? [],
    );
  }
}
