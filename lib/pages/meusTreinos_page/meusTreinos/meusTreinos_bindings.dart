import 'package:get/get.dart';
import 'package:sesi_fitness/repository/userAuth_repository/i_userAuth.dart';
import 'package:sesi_fitness/repository/userAuth_repository/userAuth.dart';
import './meusTreinos_controller.dart';

class MeusTreinosBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      MeusTreinosController(Get.find()),
    );
  }
}
