import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

//Criação de formulário de inserção de CPF

class SesifitnessForm extends StatelessWidget {
  SesifitnessForm({Key? key, required this.cpf, required this.data})
      : super(key: key);
  final _formKey = GlobalKey<FormState>();

  TextEditingController cpf;
  String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      width: context.widthTransformer(reducedBy: 50),
      height: 40,
      alignment: Alignment.center,
      child: Form(
        key: _formKey,
        child: TextFormField(
          onChanged: (value) {
            data = value;
          },
          controller: cpf,
          keyboardType: TextInputType.number,
          validator: Validatorless.cpf("CPF Inválido"),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: "Insira seu CPF",
            hintStyle: const TextStyle(
              color: Color(0xFF005A6F),
            ),
            alignLabelWithHint: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white),
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
