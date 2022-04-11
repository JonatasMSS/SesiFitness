import 'package:get/get.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/i_dataAuth.dart';
import './professorInicial_page_controller.dart';

class ProfessorInicialPageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IDataAuth>(DataAuth());
    Get.put(
      ProfessorInicialPageController(Get.find()),
    );
  }
}
