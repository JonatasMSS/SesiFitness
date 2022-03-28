import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './realizarAvaliação_page_controller.dart';

class RealizarAvaliacaoPagePage extends GetView<RealizarAvaliacaoPageController> {
    
    const RealizarAvaliacaoPagePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('RealizarAvaliacaoPagePage'),),
            body: Container(),
        );
    }
}