import 'package:flutter_svg/svg.dart';
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
                SesiacademiaTreino(
                  assetImage: 'assets/images/treino.png',
                  title: controller.dataPage['titlePage']!,
                  repetition: controller.dataPage['repetitions']!,
                ),
                Text(
                  controller.dataPage['titlePage'] ?? "Nenhum texto encontrado",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 35,
                  ),
                ),
                Center(
                  child: Image.network(
                    "https://media1.giphy.com/media/xT0xekSmUwcoD6SxzO/giphy.gif",
                    width: context.widthTransformer(reducedBy: 10),
                    height: 200,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Detalhes do treino",
                    style: TextStyle(fontSize: 35)),
                const Divider(),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: SvgPicture.asset('assets/icons/Icon_halter.svg'),
                  title: const Text(
                    "Carga:",
                    style: TextStyle(fontSize: 35),
                  ),
                  trailing: Container(
                    width: context.widthTransformer(reducedBy: 60),
                    child: const Text(
                      "35 KG",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: SvgPicture.asset('assets/icons/Icon_halter.svg'),
                  title: const Text(
                    "Cadência:",
                    style: TextStyle(fontSize: 35),
                  ),
                  trailing: Container(
                    width: context.widthTransformer(reducedBy: 60),
                    child: const Text(
                      "35 KG",
                      style: TextStyle(fontSize: 35),
                    ),
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
