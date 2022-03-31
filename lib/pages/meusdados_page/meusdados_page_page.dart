import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sesi_fitness/widgets/sesiFitness_appbar.dart';

import './meusdados_page_controller.dart';

class MeusdadosPagePage extends GetView<MeusdadosPageController> {
  MeusdadosPagePage({
    this.name = "NONE",
    this.dateBirth = "00/00/0000",
    this.matric = "00/00/0000",
    this.lastPayment = "00/00/0000",
  }) : super();

  final String name;
  final String dateBirth;
  final String matric;
  final String lastPayment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.height,
        width: context.width,
        color: Color(0xFF1D4A8C),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Image(
              image: AssetImage('assets/images/Ellipse 2.png'),
            ),
            const SizedBox(
              height: 50,
            ),
            dataContainment(
              name: Get.arguments.nome,
              data: "Nome",
            ),
            dataContainment(
              data: "Data de nascimento",
              name: Get.arguments.dataNasc,
            ),
            dataContainment(
              data: "Data de matricula",
              name: Get.arguments.dataMatric,
            ),
            dataContainment(
              data: "Data de ultimo pagamento",
              name: Get.arguments.lastPay,
            ),
            Spacer(),
            Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}

class dataContainment extends StatelessWidget {
  const dataContainment({
    Key? key,
    required this.data,
    required this.name,
  }) : super(key: key);

  final String data;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
            width: context.width,
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              data,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 30),
          )
        ],
      ),
    );
  }
}
