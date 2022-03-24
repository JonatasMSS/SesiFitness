import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_treino.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './treinoDetalhado_controller.dart';

class TreinoDetalhadoPage extends GetView<TreinoDetalhadoController> {
  const TreinoDetalhadoPage({Key? key}) : super(key: key);

  final String LoremIpsum =
      """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel aliquam quam. Aliquam erat volutpat. In mattis magna ac dictum dapibus. Pellentesque ac euismod ipsum, non consequat lorem. Integer a purus tincidunt, semper dui eu, eleifend enim. Proin non dolor et nisi finibus ullamcorper vel eget ligula. Aenean posuere vestibulum est quis finibus. Proin non congue erat. In lorem justo, porttitor sed posuere vitae, pellentesque a tellus. Nulla nulla enim, facilisis eget rhoncus eu, hendrerit ut turpis. Suspendisse potenti.

Nulla dignissim libero ipsum, vel efficitur mauris facilisis placerat. Proin eu scelerisque dolor. Etiam hendrerit scelerisque orci, in luctus nibh pellentesque vitae. Duis non eleifend tellus. Praesent ut dignissim ex. Maecenas mollis quam vitae ipsum posuere facilisis. Etiam molestie in nisl vitae accumsan. Ut hendrerit est lacus, a venenatis erat volutpat vitae. Sed gravida elementum luctus.""";

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
                  height: 20,
                ),
                Text(
                  LoremIpsum,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
