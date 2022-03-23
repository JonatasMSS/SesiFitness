import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

//Criação de formulário de inserção de CPF

class SesifitnessForm extends StatelessWidget {
  SesifitnessForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      width: context.widthTransformer(reducedBy: 50),
      height: 50,
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(1),
        child: TextFormField(
          style: TextStyle(fontSize: 30),
          keyboardType: TextInputType.number,
          validator: Validatorless.cpf("CPF Inválido"),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: "Insira seu CPF",
            hintStyle: const TextStyle(
              color: Color(0xFF005A6F),
              fontSize: 30,
              height: 2,
            ),
            alignLabelWithHint: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
