import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sesi_fitness/widgets/sesiAcadeima_listaTreinos.dart';
import 'package:sesi_fitness/widgets/sesiAcademia.appbarButtons.dart';
import 'package:sesi_fitness/widgets/sesiAcademia_pageDrawer.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';
import './minhasAvaliacoes_controller.dart';

class MinhasAvaliacoesPage extends GetView<MinhasAvaliacoesController> {
  MinhasAvaliacoesPage({Key? key}) : super(key: key);

  final List<Widget> test = [
    Text("A"),
    Text("A"),
    Text("A"),
    Text("A"),
    Text("A"),
    Text("A"),
    Text("A"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: pageDrawer(),
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
                      state: false,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: SesiacademiaAppbarbuttons(
                      sizeH: 50,
                      descText: "Minhas Avaliações",
                      state: true,
                      pageRoute: '/minhasAvaliacoes',
                      textColor: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 50),
                clipBehavior: Clip.hardEdge,
                width: context.widthTransformer(
                  reducedBy: 9,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF1D4A8C),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/Ellipse 2.png'),
                    SesiacadeimaListatreinos(
                      titleList: "Avaliação Física",
                      backColor: Color(0xFFEEEEEE),
                      containList: test,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Avaliação de Força",
                      backColor: Color(0xFFEEEEEE),
                      containList: test,
                    ),
                    SesiacadeimaListatreinos(
                      titleList: "Avaliação de Flexibilidade",
                      backColor: Color(0xFFEEEEEE),
                      containList: test,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
