import 'package:get/get.dart';
import './treinoDetalhado_controller.dart';

class TreinoDetalhadoBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(TreinoDetalhadoController());
    }
}