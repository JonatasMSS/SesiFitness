import 'package:flutter/material.dart';

class SesiacademiaAddtreino extends StatelessWidget {
  const SesiacademiaAddtreino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.add_circle_rounded),
        Center(
          child: Text(
            'Adicionar treino',
            style: TextStyle(fontSize: 25),
          ),
        )
      ],
    );
  }
}
