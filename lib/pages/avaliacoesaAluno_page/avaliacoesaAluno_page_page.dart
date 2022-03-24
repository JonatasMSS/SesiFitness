import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './avaliacoesaAluno_page_controller.dart';

class AvaliacoesaAlunoPagePage extends GetView<AvaliacoesaAlunoPageController> {
    
    const AvaliacoesaAlunoPagePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('AvaliacoesaAlunoPagePage'),),
            body: Container(),
        );
    }
}