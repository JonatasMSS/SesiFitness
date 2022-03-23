import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_treino.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './treinoDetalhado_controller.dart';

class TreinoDetalhadoPage extends GetView<TreinoDetalhadoController> {
  const TreinoDetalhadoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SesifitnessAppbar(),
      backgroundColor: Color(0xFFEFEFEF),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: context.widthTransformer(reducedBy: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[350]!,
                    offset: Offset(0, 2),
                    blurRadius: 7,
                  )
                ]),
            child: Column(
              children: [
                SesiacademiaTreino(assetImage: 'assets/images/treino.png'),
                Text(
                  controller.dataPage['titlePage'] ?? "Nenhum texto encontrado",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 35,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
