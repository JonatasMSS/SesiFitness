import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_professor.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './rodrigoPage_page_controller.dart';

class RodrigoPagePagePage extends GetView<RodrigoPagePageController> {
  RodrigoPagePagePage({Key? key}) : super(key: key);
  final List<String> data = [
    "Professor Joao",
    "Professora Maria",
    "Professor Carlos"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SesifitnessAppbar(),
      backgroundColor: Color(0xFFEFEFEF),
      // drawer: SesiacademiaPagedrawerprofessor(),
      body: Center(
        child: Container(
          width: context.widthTransformer(reducedBy: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return widgetProfessor(
                title: data[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
