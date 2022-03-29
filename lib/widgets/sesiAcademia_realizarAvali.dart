import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SesiacademiaRealizaravaliacao extends StatelessWidget {
  const SesiacademiaRealizaravaliacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Color(0xFF2C4E82)),
          onPressed: () {
            Get.toNamed('/realiAvali');
          },
          child: const Text(
            "Realizar Avaliação",
            style: TextStyle(
              color: Color(0xFFEFEFEF),
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }
}
