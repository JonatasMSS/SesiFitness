import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      this.maxLines,
      this.minLines,
      this.inputTypeText = TextInputType.number,
      this.maxDigits})
      : super(key: key);

  final TextEditingController? buttonController;
  Rx<String>? Data;
  final String? hintText;
  final double? fontSize;
  final Color borderSide;
  final Color backgroundColor;
  final double widthReduce;
  final double? heightCursor;
  final TextInputType inputTypeText;
  final int? maxLines;
  final int? minLines;
  final int? maxDigits;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.widthTransformer(reducedBy: widthReduce),
      padding: const EdgeInsets.all(1),
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(maxDigits),
        ],
        minLines: minLines,
        maxLines: maxLines,
        cursorHeight: heightCursor,
        onChanged: (valor) {
          Data?.value = valor;
          print("Data Value:" + valor);
        },
        controller: buttonController,
        style: TextStyle(fontSize: 25),
        keyboardType: inputTypeText,
        validator: Validatorless.cpf("CPF Inválido"),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          isCollapsed: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xFF005A6F),
            fontSize: fontSize,
            height: 1,
          ),
          alignLabelWithHint: true,
          filled: true,
          fillColor: backgroundColor,
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
    );
  }
}
