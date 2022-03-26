import 'package:flutter/material.dart';

class SesiacademiaRealizaravali extends StatelessWidget {
  const SesiacademiaRealizaravali({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Color(0xFF2C4E82)),
          onPressed: () {},
          child: Text(
            "Realizar Avaliação",
            style: TextStyle(
              color: Color(0xFFEFEFEF),
            ),
          ),
        ),
      ],
    );
  }
}
