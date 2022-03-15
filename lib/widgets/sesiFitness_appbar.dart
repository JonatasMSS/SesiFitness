import 'package:flutter/material.dart';

class SesifitnessAppbar extends AppBar {
  SesifitnessAppbar({
    Key? key,
    double elevation = 2,
  }) : super(
            key: key,
            backgroundColor: Colors.blue[700],
            elevation: elevation,
            centerTitle: true,
            title: const Text("SESI FITNESS"),
            iconTheme: const IconThemeData(color: Colors.black));
}
