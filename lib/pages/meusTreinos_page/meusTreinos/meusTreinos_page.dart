import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcadeima_listaTreinos.dart';
import 'package:sesi_fitness/widgets/sesiAcademia.appbarButtons.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_treino.dart';

import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './meusTreinos_controller.dart';

class MeusTreinosPage extends GetView<MeusTreinosController> {
  MeusTreinosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // ignore: prefer_const_constructors
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF1D4A8C),
              ),
              child: Column(
                children: const [
                  Image(
                    image: AssetImage('assets/images/Ellipse 2.png'),
                    width: 90,
                    height: 90,
                  ),
                  Text(
                    'Fulana de Tal dos Santos',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: const Text(
                'Meus Dados',
                style: TextStyle(fontSize: 30),
              ),
              onTap: () {
                Get.offAndToNamed('/meusDados');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.arrow_back_sharp,
                color: Colors.black,
              ),
              title: const Text(
                'Sair',
                style: TextStyle(fontSize: 30),
              ),
              onTap: () {
                Get.offAndToNamed('/');
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFEFEFEF),
      appBar: SesifitnessAppbar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SesiacademiaAppbarbuttons(
                      sizeH: 50,
                      descText: "Meus Treinos",
                      state: true,
                      pageRoute: '',
                    ),
                  ),
                  Expanded(
                    child: SesiacademiaAppbarbuttons(
                      sizeH: 50,
                      descText: "Minhas Avaliações",
                      state: false,
                      pageRoute: '',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SesiacadeimaListatreinos(
                titleList: "Segunda",
              ),
              const SizedBox(
                height: 30,
              ),
              SesiacadeimaListatreinos(
                titleList: "Terça",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
