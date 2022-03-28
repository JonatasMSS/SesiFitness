import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesi_fitness/pages/boasvindas_page/boasvindasController.dart';
import 'package:sesi_fitness/widgets/sesiFitness_button.dart';
import 'package:sesi_fitness/widgets/sesiFitness_form.dart';

class boasvindas_page extends GetView<Boasvindascontroller> {
  boasvindas_page({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final _ECCPF = TextEditingController().obs;
  RxString CPFdata = "0".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Tela de boas vindas.png'),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 280),
            alignment: Alignment.center,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SesifitnessForm(
                      buttonController: _ECCPF.value, Data: CPFdata),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () {
                      return SesifitnessButton(
                        textDesc: "Logar-se",
                        cpf: CPFdata.value,
                      );
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
