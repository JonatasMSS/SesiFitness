// ignore: file_names
import 'package:flutter/material.dart';
// Criando a APPBAR personalizada

class SesifitnessAppbar extends AppBar {
  SesifitnessAppbar({
    Key? key,
    double elevation = 2,
  }) : super(
          //Definindo os parametros e cores
          key: key,
          backgroundColor: Color(0xFF274776),
          elevation: elevation,
          centerTitle: true,
          title: const Text("SESI FITNESS"),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        );
}
