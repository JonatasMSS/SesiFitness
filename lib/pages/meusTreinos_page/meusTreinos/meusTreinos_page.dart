import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcademia.appbarButtons.dart';

import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './meusTreinos_controller.dart';

class MeusTreinosPage extends GetView<MeusTreinosController> {
  const MeusTreinosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SesifitnessAppbar(),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SesiacademiaAppbarbuttons(
                    sizeH: 50,
                    descText: "Meus Treinos",
                    state: true,
                  ),
                ),
                Expanded(
                  child: SesiacademiaAppbarbuttons(
                    sizeH: 50,
                    descText: "Minhas Avaliações",
                    state: false,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
