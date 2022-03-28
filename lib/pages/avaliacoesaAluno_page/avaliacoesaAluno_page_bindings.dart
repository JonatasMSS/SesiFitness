import 'package:get/get.dart';
import './avaliacoesaAluno_page_controller.dart';

class AvaliacoesaAlunoPageBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(AvaliacoesaAlunoPageController());
    }
}