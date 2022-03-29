import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

//Criação de formulário de inserção de CPF

class SesifitnessForm extends StatelessWidget {
  SesifitnessForm(
      {Key? key,
      this.Data,
      this.buttonController,
      this.hintText,
      this.fontSize,
      this.borderSide = Colors.white,
      this.backgroundColor = Colors.white,
      this.widthReduce = 50,
      this.heightCursor,
      this.inputTypeText = TextInputType.number})
      : super(key: key);

  final TextEditingController? buttonController;
  RxString? Data;
  final String? hintText;
  final double? fontSize;
  final Color borderSide;
  final Color backgroundColor;
  final double widthReduce;
  final double? heightCursor;
  final TextInputType inputTypeText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: backgroundColor,
      ),
      width: context.widthTransformer(reducedBy: widthReduce),
      height: 50,
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(1),
        child: TextFormField(
          cursorHeight: heightCursor,
          onChanged: (valor) {
            Data?.value = valor;
            print("Data Value:" + valor);
          },
          controller: buttonController,
          style: TextStyle(fontSize: 30),
          keyboardType: inputTypeText,
          validator: Validatorless.cpf("CPF Inválido"),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Color(0xFF005A6F),
              fontSize: fontSize,
              height: 2,
            ),
            alignLabelWithHint: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: borderSide),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: borderSide),
            ),
          ),
        ),
      ),
    );
  }
}
