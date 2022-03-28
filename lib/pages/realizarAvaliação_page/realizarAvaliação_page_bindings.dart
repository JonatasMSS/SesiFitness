import 'package:get/get.dart';
import './realizarAvaliação_page_controller.dart';

class RealizarAvaliacaoPageBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(RealizarAvaliacaoPageController());
    }
}