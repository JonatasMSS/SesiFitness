import 'package:get/get.dart';
import './todasAvaliacoes_controller.dart';

class TodasAvaliacoesBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(TodasAvaliacoesController());
    }
}