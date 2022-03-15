import 'package:flutter/material.dart';

class SesifitnessAppbar extends AppBar {
  SesifitnessAppbar({
    Key? key,
    double elevation = 2,
  }) : super(
            key: key,
            backgroundColor: Color(0xFF274776),
            elevation: elevation,
            centerTitle: true,
            title: const Text("SESI FITNESS"),
            iconTheme: const IconThemeData(color: Colors.black));
}
