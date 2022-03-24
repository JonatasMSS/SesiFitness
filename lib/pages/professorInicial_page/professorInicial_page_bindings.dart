import 'package:get/get.dart';
import './professorInicial_page_controller.dart';

class ProfessorInicialPageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      ProfessorInicialPageController(),
    );
  }
}
