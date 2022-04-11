import 'package:get/get.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/i_dataAuth.dart';

import './meusTreinos_controller.dart';

class MeusTreinosBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataAuth());
    Get.put(
      MeusTreinosController(Get.find()),
    );
  }
}
