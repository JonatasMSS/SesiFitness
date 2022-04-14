import 'package:flutter/material.dart';

import 'package:sesi_fitness/models/checkboxModel.dart';

class SesiacademiaCheckboxtreino extends StatefulWidget {
  const SesiacademiaCheckboxtreino({
    Key? key,
    required this.item,
    this.addData,
  }) : super(key: key);

  final Checkboxmodel item;
  final Function(String data, bool clear)? addData;

  @override
  State<SesiacademiaCheckboxtreino> createState() =>
      _SesiacademiaCheckboxtreinoState();
}

class _SesiacademiaCheckboxtreinoState
    extends State<SesiacademiaCheckboxtreino> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(
          widget.item.texto,
          style: const TextStyle(fontSize: 25),
        ),
        value: widget.item.checked,
        onChanged: (value) {
          setState(() {
            widget.item.checked = value!;
          });
          widget.addData!(widget.item.texto, !value!);
        });
  }
}
