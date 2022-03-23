import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './treinoDetalhado_controller.dart';

class TreinoDetalhadoPage extends GetView<TreinoDetalhadoController> {
    
    const TreinoDetalhadoPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('TreinoDetalhadoPage'),),
            body: Container(),
        );
    }
}