import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_pageDrawer.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './professorInicial_page_controller.dart';

class ProfessorInicialPagePage extends GetView<ProfessorInicialPageController> {
  const ProfessorInicialPagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: pageDrawer(),
      appBar: SesifitnessAppbar(),
      body: SingleChildScrollView(),
    );
  }
}
