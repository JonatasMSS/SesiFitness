import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/models/professorModel/ProfessorModel.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_pageDrawerProfessor.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_professor.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './rodrigoPage_page_controller.dart';

class RodrigoPagePagePage extends GetView<RodrigoPagePageController> {
  const RodrigoPagePagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SesiacademiaPagedrawerprofessor(
        nomeProf: "Supervisor Rodrigo",
      ),
      appBar: SesifitnessAppbar(),
      backgroundColor: const Color(0xFFEFEFEF),
      // drawer: SesiacademiaPagedrawerprofessor(),
      body: FutureBuilder(
        future: controller.getAllProfessores(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: Container(
                width: context.widthTransformer(reducedBy: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView.builder(
                  itemCount: controller.professores.length,
                  itemBuilder: (context, index) {
                    final ProfessorModel _professor =
                        controller.professores[index];
                    return widgetProfessor(
                      professorModel: _professor,
                    );
                  },
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
