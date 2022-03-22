import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './minhasAvaliacoes_controller.dart';

class MinhasAvaliacoesPage extends GetView<MinhasAvaliacoesController> {
    
    const MinhasAvaliacoesPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('MinhasAvaliacoesPage'),),
            body: Container(),
        );
    }
}