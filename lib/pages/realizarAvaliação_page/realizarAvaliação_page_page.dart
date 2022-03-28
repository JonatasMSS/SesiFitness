import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_pageDrawerProfessor.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './realizarAvaliação_page_controller.dart';

class RealizarAvaliacaoPagePage
    extends GetView<RealizarAvaliacaoPageController> {
  const RealizarAvaliacaoPagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SesiacademiaPagedrawerprofessor(),
      appBar: SesifitnessAppbar(),
    );
  }
}
