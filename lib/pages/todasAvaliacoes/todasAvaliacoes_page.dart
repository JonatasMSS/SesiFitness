import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './todasAvaliacoes_controller.dart';

class TodasAvaliacoesPage extends GetView<TodasAvaliacoesController> {
    
    const TodasAvaliacoesPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('TodasAvaliacoesPage'),),
            body: Container(),
        );
    }
}